terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  profile = "devops"
  region = "ap-northeast-2"
}

resource "aws_dynamodb_table" "state_locking" {
  hash_key = "LockID"
  name     = "noelbird-terraform-backend-lock"
  attribute {
    name = "LockID"
    type = "S"
  }
  billing_mode = "PAY_PER_REQUEST"
}
