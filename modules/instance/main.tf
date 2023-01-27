terraform {
  required_providers {
    scaleway = {
      source = "scaleway/scaleway"
      version = "~>2.9.1"
    }
  }
}

resource "scaleway_instance_ip" "public_ip" {}

resource "scaleway_instance_server" "instance" {
  type = var.type
  name =  var.name
  image =  var.image
  additional_volume_ids = [module.create_volume.volume_id]
  ip_id = scaleway_instance_ip.public_ip.id
  private_network {
    pn_id = var.network_id
  }
  security_group_id = var.security_group_id
}

module "create_volume" {
  source = "../volume"
  name = "volume-${var.name}"
  type = var.type_volume
  size_in_gb = var.size_in_gb
}