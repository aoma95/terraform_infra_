output "pv_network_id" {
  description = "id network"
  value       = scaleway_vpc_private_network.pv_network.id
}
output "pv_network_name" {
  description = "name network"
  value       = scaleway_vpc_private_network.pv_network.name
}