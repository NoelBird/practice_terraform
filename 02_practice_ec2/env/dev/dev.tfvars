# prj
project_name="test"
environment="dev"
key_name="common-key"

# VPC
cidr_vpc        = "10.0.0.0/16"
cidr_public1    = "10.0.0.0/24"
cidr_public2    = "10.0.1.0/24"
cidr_public3    = "10.0.2.0/24"
cidr_public4    = "10.0.3.0/24"
cidr_private1   = "10.0.11.0/24"
cidr_private2   = "10.0.12.0/24"
cidr_private3   = "10.0.13.0/24"
cidr_private4   = "10.0.14.0/24"

# Bastion
bastion_ami           = "ami-062cf18d655c0b1e8"
bastion_instance_type = "t3.micro"
bastion_key_name      = "common-key"
bastion_volume_size   = 8

# Private EC2
Private_EC2_ami           = "ami-062cf18d655c0b1e8"
Private_EC2_instance_type = "t3.micro"
Private_EC2_key_name      = "common-key"
Private_EC2_volume_size   = 8
