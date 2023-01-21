terraform {
  required_providers {
    scaleway = {
      source = "scaleway/scaleway"
      version = "~>2.9.1"
    }
  }
}

resource "scaleway_instance_server" "instance" {
  type = var.type
  name =  var.name
  image =  var.image
}