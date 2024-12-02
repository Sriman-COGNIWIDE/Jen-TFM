output "vpc_id" {
  value       = aws_vpc.vpcs.id
  description = "Unique identifier assigned to the created Virtual Private Cloud in AWS"
}

output "vpc_cidr_block" {
  value       = aws_vpc.vpcs.cidr_block
  description = "IPv4 address range assigned to the VPC for internal network addressing"
}