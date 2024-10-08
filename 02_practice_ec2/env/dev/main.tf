terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "noelbird-terraform-backend"
    dynamodb_table = "noelbird-terraform-backend-lock"
    encrypt = true
    key = "terraform.tfstate"
    profile = "devops"
    region = "ap-northeast-2"
  }
}

provider "aws" {
  profile = "devops"
  region = "ap-northeast-2"
}

module "dev" {
  source = "../../"

  # prj
  project_name = var.project_name
  environment = var.environment
  key_name = var.key_name

  # VPC
  cidr_vpc = var.cidr_vpc
  cidr_public1 = var.cidr_public1
  cidr_public2 = var.cidr_public2
  cidr_public3 = var.cidr_public3
  cidr_public4 = var.cidr_public4
  cidr_private1 = var.cidr_private1
  cidr_private2 = var.cidr_private2
  cidr_private3 = var.cidr_private3
  cidr_private4 = var.cidr_private4

  # Public EC2
  bastion_ami           = var.bastion_ami
  bastion_instance_type = var.bastion_instance_type
  bastion_key_name      = var.bastion_key_name
  bastion_volume_size   = var.bastion_volume_size

  # Private EC2
  Private_EC2_ami           = var.Private_EC2_ami
  Private_EC2_instance_type = var.Private_EC2_instance_type
  Private_EC2_key_name      = var.Private_EC2_key_name
  Private_EC2_volume_size   = var.Private_EC2_volume_size
}