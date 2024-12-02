module "vm_nginx" {
  source                      = "../../../modules/compute/ec2"
  vpc_id                      = data.terraform_remote_state.nets.outputs.net_a_id
  subnet_id                   = data.terraform_remote_state.nets.outputs.nginx_subnet_id
  associate_public_ip_address = true
  instance_name               = "vm-nginx"
  instance_type               = "t2.micro"
  ami                         = data.aws_ami.amznlinux2023.id

  create_sg               = true
  enable_bastion_ssh      = true
  enable_nginx_http       = true
  user_ip                 = ["${chomp(data.http.user_ip.response_body)}/32"]
  default_egress_internet = true

  allow_rmte_exec = true
  key             = module.vm_nginx.tls_key
  remote_exec_cmds = ["sudo yum update",
    "sudo yum install nginx -y > /dev/null 2>&1",
    "sudo nginx -v > /dev/null 2>&1",
    "sudo systemctl start nginx > /dev/null 2>&1",
    "sudo systemctl enable nginx > /dev/null 2>&1",
    "sudo echo '${sensitive(module.vm_connect.tls_key)}' > vm_connect_key.pem",
  "chmod 400 vm_connect_key.pem > /dev/null 2>&1"]

  deployment_mode = "terraform"
}

module "vm_connect" {
  source        = "../../../modules/compute/ec2"
  vpc_id        = data.terraform_remote_state.nets.outputs.net_a_id
  subnet_id     = data.terraform_remote_state.nets.outputs.connect_subnet_id
  instance_name = "vm-connect"
  instance_type = "t2.micro"
  ami           = data.aws_ami.amznlinux2023.id

  create_sg                 = true
  enable_ssh                = true
  sg_ssh_cidr               = [data.terraform_remote_state.nets.outputs.nginx_subnet_cidr]
  enable_app_vpc_peering_eg = true
  app_peer_cidr             = [data.terraform_remote_state.nets.outputs.app_subnet_cidr]

  deployment_mode = "terraform"
}
