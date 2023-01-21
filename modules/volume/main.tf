terraform {
  required_providers {
    scaleway = {
      source = "scaleway/scaleway"
      version = "~>2.9.1"
    }
  }
}
resource "scaleway_instance_volume" "volume" {
    type       = var.type
    name       = var.name
    size_in_gb = var.size_in_gb
}