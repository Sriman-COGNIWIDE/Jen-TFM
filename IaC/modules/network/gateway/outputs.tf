output "nat_id" {
  value       = var.create_nat ? aws_nat_gateway.nat-1[0].id : null
  description = "Unique identifier of the provisioned NAT Gateway if created"
}

output "igw_id" {
  value       = var.create_igw ? aws_internet_gateway.igw-1[0].id : null
  description = "Unique identifier of the provisioned Internet Gateway if created"
}