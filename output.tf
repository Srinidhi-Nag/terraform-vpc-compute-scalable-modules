output "vpc_id" {
  description = "The ID of the created VPC"
  value       = module.vpc.vpc_id
}

output "subnet_id" {
  description = "The ID of the public subnet"
  value       = module.vpc.subnet_id
}

output "instance_ids" {
  description = "List of EC2 instance IDs"
  value       = module.compute.instance_ids
}

output "public_ips" {
  description = "List of public IPs for the EC2 instances"
  value       = module.compute.public_ips
}
