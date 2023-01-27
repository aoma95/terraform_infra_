variable "name" {
  description = "name de l'instance"
  type = string
}
variable "image" {
  description = "image de l'instance"
  type = string
}
variable "type" {
  description = "type de l'instance"
  type = string
}
variable "size_in_gb" {
  description = "taille du volume"
  type = string
}
variable "type_volume" {
  description = "type du volume"
  type = string
}
variable "name_network" {
  description = "name network"
  type = string
}
variable network_id {
  type        = string
  description = "network_id"
}
variable security_group_id {
  type= string
  description = "id security group"
}

