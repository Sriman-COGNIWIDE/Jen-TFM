variable "instance_name" {
  type        = string
  description = "Name of EC2 instance to be created in AWS infrastructure"
}

variable "instance_type" {
  type        = string
  description = "Size and compute capacity of the EC2 instance to launch"
}

variable "subnet_id" {
  type        = string
  description = "ID of the subnet where the EC2 instance will be deployed"
}

variable "ami" {
  type        = string
  description = "Amazon Machine Image ID that defines the instance operating system"
}

variable "vpc_id" {
  type        = string
  description = "ID of Virtual Private Cloud network for instance deployment"
}

variable "associate_public_ip_address" {
  type        = bool
  default     = false
  description = "Enable public IP address assignment for external internet access"
}

variable "allow_rmte_exec" {
  type        = bool
  default     = false
  description = "Enable remote command execution capabilities on the EC2 instance"
}

variable "remote_exec_cmds" {
  type        = list(string)
  default     = [" "]
  description = "List of remote commands to execute during instance initialization"
}

variable "create_sg" {
  type        = bool
  default     = false
  description = "Toggle to create a new security group for the instance"
}

variable "allow_user_data" {
  type        = bool
  default     = false
  description = "Enable execution of user data scripts during instance launch"
}

variable "sg_id" {
  type        = string
  default     = " "
  description = "Identifier for the security group to associate with instance"
}

variable "user_data_path" {
  type        = string
  default     = " "
  description = "File path to the user data script for instance configuration"
}

variable "allow_rmt_via_bastion" {
  type        = bool
  default     = false
  description = "Enable remote access to instance through a bastion host"
}

variable "bastion_ip" {
  type        = string
  default     = " "
  description = "IP address of the bastion host for secure remote access"
}

variable "bastion_username" {
  type        = string
  default     = "ec2-user"
  description = "Username for authentication and login to the bastion host"
}

variable "bastion_private_key" {
  type        = string
  default     = " "
  description = "Path to private SSH key file for bastion authentication"
}

variable "bastion_port" {
  type        = number
  default     = 22
  description = "SSH port number for establishing connection to bastion host"
}

variable "enable_nginx_ssh" {
  type        = bool
  default     = false
  description = "Allow SSH access to nginx servers through security group rules"
}

variable "enable_nginx_http" {
  type        = bool
  default     = false
  description = "Enable HTTP traffic access to nginx web server instances"
}

variable "enable_connect_ssh" {
  type        = bool
  default     = false
  description = "Allow SSH connections for remote access to connect servers"
}

variable "enable_connect_vpc_peering" {
  type        = bool
  default     = false
  description = "Enable VPC peering connections for cross-network communication setup"
}

variable "enable_bastion_ssh" {
  type        = bool
  default     = false
  description = "Allow SSH access through bastion host for secure connections"
}

variable "enable_app_ssh" {
  type        = bool
  default     = false
  description = "Enable SSH access to application servers in the infrastructure"
}

variable "enable_app_flask" {
  type        = bool
  default     = false
  description = "Allow access to Flask application endpoints through security rules"
}

variable "enable_app_vpc_peering_eg" {
  type        = bool
  default     = false
  description = "Enable VPC peering egress traffic for application communication flow"
}

variable "enable_app_vpc_peering_ig" {
  type        = bool
  default     = false
  description = "Enable VPC peering ingress traffic for application access control"
}

variable "enable_app_db_access" {
  type        = bool
  default     = false
  description = "Allow application servers to communicate with database instances securely"
}

variable "enable_ssh" {
  type        = bool
  default     = false
  description = "Enable SSH access globally for all applicable instance types"
}

variable "default_egress_internet" {
  type        = bool
  default     = false
  description = "Allow outbound internet traffic for instances in security group"
}

variable "sg_ssh_cidr" {
  type        = list(string)
  default     = [" "]
  description = "List of CIDR blocks allowed for SSH access to instances"
}

variable "app_peer_cidr" {
  type        = list(string)
  default     = [" "]
  description = "CIDR ranges for application VPC peering connection configuration"
}

variable "app_db_cidr" {
  type        = list(string)
  default     = [" "]
  description = "CIDR blocks allowed for database access from application servers"
}

variable "user_ip" {
  type        = list(string)
  default     = [" "]
  description = "List of user IP addresses allowed to access the infrastructure"
}

variable "create_iam_role" {
  type        = bool
  default     = false
  description = "Toggle creation of IAM role for EC2 instance permissions"
}

variable "s3_access_policy" {
  type        = string
  default     = null
  description = "IAM policy document for S3 bucket access permissions configuration"
}

variable "ec2_assume_role_policy" {
  type        = string
  default     = null
  description = "Trust policy document allowing EC2 service to assume IAM role"
}

variable "key" {
  type        = string
  default     = " "
  description = "Name of SSH key pair for secure instance access authentication"
}

variable "deployment_mode" {
  type        = string
  description = "Deployment environment mode specification for infrastructure configuration setup"
}