variable "vpc_id" {
  type        = string
  description = "ID of the VPC where route table resources will be created"
}

variable "rt_name" {
  type        = string
  description = "Name tag to identify and manage the route table resource in AWS"
}

variable "gateway_id" {
  type        = string
  default     = ""
  description = "ID of the internet or NAT gateway to be associated with routes"
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of subnet IDs to be associated with this route table"
}

variable "deployment_mode" {
  type        = string
  description = "Environment designation for route table like production, staging or development"
}