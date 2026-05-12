terraform {
  required_version = ">= 1.0.0"
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "~> 0.125"
    }
  }
}

provider "yandex" {
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = var.zone
  service_account_key_file = var.service_account_key_file
}

resource "yandex_vpc_network" "main" {
  name = "${var.project}-net"
}

resource "yandex_vpc_subnet" "public" {
  name           = "${var.project}-public-subnet"
  zone           = var.zone
  network_id     = yandex_vpc_network.main.id
  v4_cidr_blocks = [var.public_subnet_cidr]
}

resource "yandex_vpc_subnet" "private" {
  name           = "${var.project}-private-subnet"
  zone           = var.zone
  network_id     = yandex_vpc_network.main.id
  v4_cidr_blocks = [var.private_subnet_cidr]
  route_table_id = yandex_vpc_route_table.private_rt.id
}

resource "yandex_vpc_gateway" "nat" {
  name = "${var.project}-nat-gw"
  shared_egress_gateway {}
}

resource "yandex_vpc_route_table" "private_rt" {
  name       = "${var.project}-private-rt"
  network_id = yandex_vpc_network.main.id

  static_route {
    destination_prefix = "0.0.0.0/0"
    gateway_id         = yandex_vpc_gateway.nat.id
  }
}

resource "yandex_vpc_security_group" "bastion_sg" {
  name       = "${var.project}-bastion-sg"
  network_id = yandex_vpc_network.main.id

  ingress {
    protocol       = "TCP"
    description    = "SSH from allowed CIDRs"
    v4_cidr_blocks = var.ssh_allowed_cidrs
    port           = 22
  }

  egress {
    protocol       = "ANY"
    description    = "Allow all outbound"
    v4_cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "yandex_vpc_security_group" "private_sg" {
  name       = "${var.project}-private-sg"
  network_id = yandex_vpc_network.main.id

  ingress {
    protocol       = "TCP"
    description    = "SSH from public subnet (bastion)"
    v4_cidr_blocks = [var.public_subnet_cidr]
    port           = 22
  }

  ingress {
    protocol       = "TCP"
    description    = "HTTP from public subnet (optional via reverse proxy/bastion tunnel)"
    v4_cidr_blocks = [var.public_subnet_cidr]
    port           = 80
  }

  egress {
    protocol       = "ANY"
    description    = "Allow all outbound via NAT"
    v4_cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "yandex_compute_disk" "data_disk" {
  name     = "${var.project}-data-disk"
  type     = var.data_disk_type
  zone     = var.zone
  size     = var.data_disk_size_gb
}

resource "yandex_compute_disk" "portal_disk" {
  name     = "${var.project}-portal-disk"
  type     = var.portal_disk_type
  zone     = var.zone
  size     = var.portal_disk_size_gb
}

locals {
  ssh_key = "${var.ssh_user}:${file(var.ssh_public_key_path)}"
}

data "yandex_compute_image" "ubuntu" {
  family = "ubuntu-2204-lts"
}

resource "yandex_compute_instance" "bastion" {
  name        = "${var.project}-bastion"
  platform_id = var.bastion_platform_id
  zone        = var.zone

  resources {
    cores  = var.bastion_cores
    memory = var.bastion_memory_gb
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.id
      size     = var.bastion_boot_disk_gb
      type     = var.bastion_boot_disk_type
    }
  }

  network_interface {
    subnet_id          = yandex_vpc_subnet.public.id
    nat                = true
    security_group_ids = [yandex_vpc_security_group.bastion_sg.id]
  }

  metadata = {
    ssh-keys = local.ssh_key
  }
}

resource "yandex_compute_instance" "data_platform" {
  name        = "${var.project}-data-platform"
  platform_id = var.data_platform_platform_id
  zone        = var.zone

  resources {
    cores  = var.data_platform_cores
    memory = var.data_platform_memory_gb
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.id
      size     = var.data_platform_boot_disk_gb
      type     = var.data_platform_boot_disk_type
    }
  }

  secondary_disk {
    disk_id     = yandex_compute_disk.data_disk.id
    auto_delete = false
  }

  network_interface {
    subnet_id          = yandex_vpc_subnet.private.id
    nat                = false
    security_group_ids = [yandex_vpc_security_group.private_sg.id]
  }

  metadata = {
    ssh-keys = local.ssh_key
  }

  depends_on = [yandex_vpc_gateway.nat]
}

resource "yandex_compute_instance" "portal" {
  name        = "${var.project}-portal"
  platform_id = var.portal_platform_id
  zone        = var.zone

  resources {
    cores  = var.portal_cores
    memory = var.portal_memory_gb
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.id
      size     = var.portal_boot_disk_gb
      type     = var.portal_boot_disk_type
    }
  }

  secondary_disk {
    disk_id     = yandex_compute_disk.portal_disk.id
    auto_delete = false
  }

  network_interface {
    subnet_id          = yandex_vpc_subnet.private.id
    nat                = false
    security_group_ids = [yandex_vpc_security_group.private_sg.id]
  }

  metadata = {
    ssh-keys = local.ssh_key
  }

  depends_on = [yandex_vpc_gateway.nat]
}