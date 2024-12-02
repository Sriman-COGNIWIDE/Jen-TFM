variable "net_a-subnet" {
  description = "Subnets in Network-A"
  type = map(object({
    subnet_cidr = string
    subnet_az   = string
    subnet_name = string
  }))
  default = {
    "subnet_a" = {
      subnet_cidr = "10.1.1.0/24"
      subnet_az   = "us-east-1a"
      subnet_name = "subnet-a"
    },
    "subnet_b" = {
      subnet_cidr = "10.1.2.0/24"
      subnet_az   = "us-east-1b"
      subnet_name = "subnet-b"
    }
  }
}
