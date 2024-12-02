variable "vpc_id" {
  type        = string
  description = "ID of the VPC where the subnet will be created and associated"
}

variable "subnet_cidr" {
  type        = string
  description = "IPv4 CIDR block range for subnet address space within the VPC network"
}

variable "subnet_az" {
  type        = string
  description = "AWS Availability Zone where the subnet will be physically located"
}

variable "subnet_name" {
  type        = string
  description = "Name tag to be assigned to the subnet for identification and organization"
}

variable "deployment_mode" {
  type        = string
  description = "Environment designation for subnet deployment like production, staging or development"
}