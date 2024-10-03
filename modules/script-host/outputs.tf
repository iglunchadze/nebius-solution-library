output "bastion_public_ip" {
  value       = yandex_compute_instance.bastion[0].network_interface.0.nat_ip_address
  description = "Public IP address of the bastion host"
}