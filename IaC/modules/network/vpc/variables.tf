variable "cidr_block" {
  type        = string
  description = "IPv4 CIDR block range for VPC network address space allocation"
}

variable "vpc_name" {
  type        = string
  description = "Name tag to be assigned to the VPC for identification and management"
}

variable "deployment_mode" {
  type        = string
  description = "Environment designation for VPC deployment like production, staging or development"
}