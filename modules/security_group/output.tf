output "sg_id" {
  description = "L'Id du security group des instances Elasticsearch"
  value       = scaleway_instance_security_group.sg.id
}
