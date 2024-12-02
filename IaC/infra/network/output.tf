output "net_a_id" {
  description = "VPC ID of Network A (VPC-1)"
  value       = module.net_a.vpc_id
}

output "nginx_subnet_id" {
  description = "Subnet ID of the subnet-A (Nginx VM's Subnet)"
  value       = module.net_a-subnets.subnet_a.subnet_id
}

output "connect_subnet_id" {
  description = "Subnet ID of the subnet-B (Connect VM's Subnet)"
  value       = module.net_a-subnets.subnet_b.subnet_id
}

output "igw_1_id" {
  description = "Internet Gateway ID in Network A"
  value       = module.gateway-a.igw_id
}

output "nat_id" {
  description = "NAT Gateway ID in Network B"
  value       = module.gateway-b.nat_id
}

output "nginx_rt_id" {
  description = "Subnet A associated Route table ID (Nginx VM subnet's Route table)"
  value       = module.subnet_a_rt.route_table_id
}

output "connect_rt_id" {
  description = "Subnet B associated Route table ID (Connect VM subnet's Route table)"
  value       = module.subnet_b_rt.route_table_id
}



