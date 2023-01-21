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
  servers = concat(
     [
        for i in range(3) : {
            name = "Dan_DEV1_S_${i+1}", image = "ubuntu_focal", type = "DEV1-S", volume_size = 30, type_volume = "b_ssd"
            }
    ],[
    # {name = "Dan_DEV1_XL1", image_vm = "ubuntu_focal", type = "DEV1-XL"}
        for i in range(1) : {
            name = "Dan_DEV1_XL_${i+1}", image = "ubuntu_focal", type = "DEV1-XL", volume_size = 30, type_volume = "b_ssd"
            }
    ]
  )
  instances = {
    for instance in local.servers : instance.name => instance
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
}
