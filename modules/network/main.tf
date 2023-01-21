terraform {
  required_providers {
    scaleway = {
      source = "scaleway/scaleway"
      version = "~>2.9.1"
    }
  }
}

resource "scaleway_vpc_private_network" "pv_network" {
  name = var.name_network
}