output "instance_ids" {
  value = [for i in aws_instance.web : i.id]
}

output "public_ips" {
  value = [for i in aws_instance.web : i.public_ip]
}
