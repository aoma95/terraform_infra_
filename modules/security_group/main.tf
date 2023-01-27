terraform {
  required_providers {
    scaleway = {
      source = "scaleway/scaleway"
      version = "~>2.9.1"
    }
  }
}
resource "scaleway_instance_security_group" "sg" {
  name                   = var.name_sg
  inbound_default_policy = "drop"

  dynamic "inbound_rule" {
    for_each = var.port

    content {
      action = "accept"
      port   = inbound_rule.value
    }
  }
}