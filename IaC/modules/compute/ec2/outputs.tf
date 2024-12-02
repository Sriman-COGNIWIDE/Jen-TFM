output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.ec2_instance.id
}

output "security_group_id" {
  description = "ID of the created security group (if created)"
  value       = var.create_sg ? aws_security_group.ec2_sg[0].id : null
}

output "sg_id" {
  description = "ID of the created security group (if created)"
  value       = var.sg_id
}

output "public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = var.associate_public_ip_address ? aws_instance.ec2_instance.public_ip : null
}

output "private_ip" {
  description = "Private IP address of the EC2 instance"
  value       = aws_instance.ec2_instance.private_ip
}

output "tls_key" {
  description = "private key for the vms"
  value       = tls_private_key.example.private_key_openssh
  sensitive   = true
}

output "iam_role_arn" {
  description = "arn of the ec2 role that is created"
  value       = var.create_iam_role ? aws_iam_role.ec2_assume_role[0].arn : null
}