resource "aws_internet_gateway" "igw-1" {
  count  = var.create_igw == true ? 1 : 0
  vpc_id = var.vpc_id
  tags = {
    name            = var.igw_name
    Deployment_mode = var.deployment_mode
  }
}

resource "aws_eip" "eip-nat-1" {
  count  = var.create_nat == true ? 1 : 0
  domain = "vpc"
}

resource "aws_nat_gateway" "nat-1" {
  count         = var.create_nat == true ? 1 : 0
  allocation_id = aws_eip.eip-nat-1[0].id
  subnet_id     = var.subnet_id
  tags = {
    name            = var.nat_name
    Deployment_mode = var.deployment_mode
  }
}

resource "aws_route" "igw_rt" {
  count                  = var.create_igw_rte == true ? 1 : 0
  route_table_id         = var.pub_rt_id
  gateway_id             = aws_internet_gateway.igw-1[0].id
  destination_cidr_block = "0.0.0.0/0"
}

resource "aws_route" "nat_rt" {
  count                  = var.create_nat_rte == true ? 1 : 0
  route_table_id         = var.priv_rt_id
  nat_gateway_id         = aws_nat_gateway.nat-1[0].id
  destination_cidr_block = "0.0.0.0/0"
}