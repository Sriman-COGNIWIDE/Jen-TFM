data "terraform_remote_state" "nets" {
  backend = "s3"
  config = {
    bucket = "home-bucks-tfs"
    key    = "recipe-network/networks.tfstate"
    region = "us-east-1"
  }
}

data "http" "user_ip" {
  url = "http://checkip.amazonaws.com"
}

data "aws_ami" "amznlinux2023" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "description"
    values = ["Amazon Linux 2023 AMI*"]
  }
}