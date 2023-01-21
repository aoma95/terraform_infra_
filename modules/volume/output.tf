output "volume_id" {
  description = "volume_id"
  value = scaleway_instance_volume.volume.id
}
output "volume_name" {
  description = "volume_name"
  value = scaleway_instance_volume.volume.name
}
output "size_in_gb" {
  description = "size_in_gb du volume"
  value = scaleway_instance_volume.volume.size_in_gb
}