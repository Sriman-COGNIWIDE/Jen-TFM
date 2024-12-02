output "subnet_id" {
  value       = aws_subnet.subnet.id
  description = "Unique identifier assigned to the created subnet within the specified VPC"
}

output "subnet_cidr" {
  value       = aws_subnet.subnet.cidr_block
  description = "IPv4 address range allocated to the subnet for network addressing purposes"
}