resource "aws_route_table" "rt" {
  vpc_id = var.vpc_id
  tags = {
    Name            = var.rt_name
    Deployment_mode = var.deployment_mode
  }
}

resource "aws_route_table_association" "subnet_association" {
  count          = length(var.subnet_ids)
  subnet_id      = var.subnet_ids[count.index]
  route_table_id = aws_route_table.rt.id
}