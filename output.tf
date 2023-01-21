output "server" {
  value =  [for key,value in module.create_instance : value.instance]
}