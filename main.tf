terraform {
  required_providers {
    scaleway = {
      source  = "scaleway/scaleway"
      version = "~> 2.9.1"
    }
  }
  required_version = "~> 1.3.0"
}

locals {
  # Generate list of servers name
  number_dev_s = 3
  number_dev_xl = 1
  servers = concat(
     [
        for i in range(local.number_dev_s) : {
            name = "Dan_DEV1_S_${i+1}", image = "ubuntu_focal", type = "DEV1-S", volume_size = 30, type_volume = "b_ssd"
            }
    ],[
    # {name = "Dan_DEV1_XL1", image_vm = "ubuntu_focal", type = "DEV1-XL"}
        for i in range(local.number_dev_xl) : {
            name = "Dan_DEV1_XL_${i+1}", image = "ubuntu_focal", type = "DEV1-XL", volume_size = 30, type_volume = "b_ssd",
            }
    ]
  )
  instances = {
    for instance in local.servers : instance.name => instance
  }
  network = "Dan_network"

  list_sg = {
    "DEV1-XL":[22,3000,9090,5601],
    "DEV1-S":[22]
  }
  
}
module "create_instance" {
    for_each = local.instances
    source = "./modules/instance"
    name = each.value.name
    image = each.value.image
    type = each.value.type
    size_in_gb = each.value.volume_size
    type_volume = each.value.type_volume
    name_network = module.pv_network.pv_network_name
    network_id = module.pv_network.pv_network_id
    security_group_id = module.security_group[each.value.type].sg_id
}
module "pv_network" {
  source = "./modules/network"
  name_network = local.network
}

module "security_group" {
  for_each = {for key,sg in local.list_sg : key => sg}
  source = "./modules/security_group"
  name_sg = "Dan_${each.key}"
  port = each.value

}

resource "scaleway_account_ssh_key" "ssh" {
  name       = "ssh_key"
  public_key = var.ssh_key_pub
}