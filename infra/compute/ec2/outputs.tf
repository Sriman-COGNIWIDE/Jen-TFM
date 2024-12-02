output "vm_nginx_tls_key" {
  description = "Private pem key for the VM_NGINX"
  value       = module.vm_nginx.tls_key
  sensitive   = true
}

output "vm_connect_tls_key" {
  description = "Private pem key for the VM_CONNECT"
  value       = module.vm_connect.tls_key
  sensitive   = true
}

output "vm_nginx_public_ip" {
  description = "Public IP of VM_NGINX"
  value       = module.vm_nginx.public_ip
}

output "vm_connect_sg_id" {
  description = "Security Group ID of the VM_CONNECT"
  value       = module.vm_connect.security_group_id
}

output "vm_connect_private_ip" {
  description = "Private IP of the VM_CONNECT"
  value       = module.vm_connect.private_ip
}

output "ami_id" {
  description = "AMI ID used for creating Ec2 Instances"
  value       = data.aws_ami.amznlinux2023.id
}
