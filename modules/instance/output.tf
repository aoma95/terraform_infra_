output "instance" {
  value = {
    name = scaleway_instance_server.instance.name
    image = scaleway_instance_server.instance.image
    type = scaleway_instance_server.instance.type
    volume_name = module.create_volume.volume_name
    size_volume_gb = module.create_volume.size_in_gb
    name_network = var.name_network
    id_network = scaleway_instance_server.instance.id
    ip_public = scaleway_instance_server.instance.public_ip
  }
  description = "instance generate"
}
output "public_ip"{
  value = scaleway_instance_server.instance.public_ip
  description = "ip publique"
}