variable "project" {
  description = "Short project name used in resource names"
  type        = string
}

variable "cloud_id" {
  description = "Yandex Cloud cloud_id"
  type        = string
}

variable "folder_id" {
  description = "Yandex Cloud folder_id"
  type        = string
}

variable "zone" {
  description = "Default availability zone"
  type        = string
  default     = "ru-central1-a"
}

variable "public_subnet_cidr" {
  description = "CIDR for public subnet"
  type        = string
}

variable "private_subnet_cidr" {
  description = "CIDR for private subnet"
  type        = string
}

variable "ssh_user" {
  description = "Linux user for SSH key metadata"
  type        = string
  default     = "ubuntu"
}

variable "ssh_public_key_path" {
  description = "Path to SSH public key"
  type        = string
}

variable "ssh_allowed_cidrs" {
  description = "CIDRs allowed to SSH to bastion"
  type        = list(string)
}

variable "bastion_platform_id" {
    type = string
    default = "standard-v3"
}
variable "bastion_cores"       {
    type = number
    default = 2
}
variable "bastion_memory_gb"   {
    type = number
    default = 2
}
variable "bastion_boot_disk_gb"   {
    type = number
    default = 5
}
variable "bastion_boot_disk_type" {
    type = string
    default = "network-hdd"

}

variable "data_platform_platform_id" {
    type = string
    default = "standard-v3"
}
variable "data_platform_cores"       {
    type = number
    default = 4
}
variable "data_platform_memory_gb"   {
    type = number
    default = 8
}
variable "data_platform_boot_disk_gb"   {
    type = number
    default = 5
}
variable "data_platform_boot_disk_type" {
    type = string
    default = "network-hdd"
}

variable "data_disk_size_gb" {
    type = number
    default = 10
}
variable "data_disk_type"    {
    type = string
    default = "network-hdd"
}

variable "portal_platform_id" {
    type = string
    default = "standard-v3"
}
variable "portal_cores"       {
    type = number
    default = 2
}
variable "portal_memory_gb"   {
    type = number
    default = 4
}
variable "portal_boot_disk_gb"   {
    type = number
    default = 5
}
variable "portal_boot_disk_type" {
    type = string
    default = "network-hdd"
}


variable "portal_disk_size_gb" {
    type = number
    default = 10
}
variable "portal_disk_type"    {
    type = string
    default = "network-hdd"
}

variable "service_account_key_file" {
  type        = string
  default = "./authorized_key.json"
}