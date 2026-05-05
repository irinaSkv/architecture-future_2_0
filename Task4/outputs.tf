output "network_id" {
  value       = yandex_vpc_network.main.id
  description = "VPC network id"
}

output "public_subnet_id" {
  value       = yandex_vpc_subnet.public.id
  description = "Public subnet id"
}

output "private_subnet_id" {
  value       = yandex_vpc_subnet.private.id
  description = "Private subnet id"
}

output "bastion_public_ip" {
  value       = yandex_compute_instance.bastion.network_interface[0].nat_ip_address
  description = "Bastion public IP"
}

output "bastion_internal_ip" {
  value       = yandex_compute_instance.bastion.network_interface[0].ip_address
  description = "Bastion internal IP"
}

output "data_platform_internal_ip" {
  value       = yandex_compute_instance.data_platform.network_interface[0].ip_address
  description = "Data platform VM internal IP"
}

output "portal_internal_ip" {
  value       = yandex_compute_instance.portal.network_interface[0].ip_address
  description = "Portal VM internal IP"
}