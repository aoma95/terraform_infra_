output "instance" {
  value = {
    name = scaleway_instance_server.instance.name
    image = scaleway_instance_server.instance.image
    type = scaleway_instance_server.instance.type
    volume_name = module.create_volume.volume_name
    size_volume_gb = module.create_volume.size_in_gb
  }
  description = "instance generate"
}