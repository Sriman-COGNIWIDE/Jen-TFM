variable "vpc_id" {
  type        = string
  default     = ""
  description = "ID of existing VPC where internet and NAT gateways will be deployed"
}

variable "igw_name" {
  type        = string
  default     = "igw"
  description = "Name tag for the Internet Gateway to identify in AWS console"
}

variable "subnet_id" {
  type        = string
  description = "ID of subnet where NAT gateway will be provisioned for outbound traffic"
}

variable "nat_name" {
  type        = string
  default     = "nat"
  description = "Name tag for the NAT Gateway to identify in AWS console"
}

variable "pub_rt_id" {
  type        = string
  description = "ID of public route table for Internet Gateway route association"
}

variable "priv_rt_id" {
  type        = string
  default     = " "
  description = "ID of private route table for NAT Gateway route association"
}

variable "create_igw" {
  type        = bool
  default     = false
  description = "Flag to determine whether an Internet Gateway should be provisioned"
}

variable "create_nat" {
  type        = bool
  default     = false
  description = "Flag to determine whether a NAT Gateway should be provisioned"
}

variable "create_igw_rte" {
  type        = bool
  default     = false
  description = "Flag to control creation of Internet Gateway route in route table"
}

variable "create_nat_rte" {
  type        = bool
  default     = false
  description = "Flag to control creation of NAT Gateway route in route table"
}

variable "deployment_mode" {
  type        = string
  description = "Specifies deployment environment like production, staging or development"
}