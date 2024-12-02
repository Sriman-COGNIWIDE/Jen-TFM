resource "aws_vpc" "vpcs" {
  cidr_block = var.cidr_block

  tags = {
    Name            = var.vpc_name
    Deployment_mode = var.deployment_mode
  }
}