terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.13.1"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

module "server" {
  source = "https://github.com/olusolasp/etech-team5-base-iac/tree/main//modules/ec2"
  number = 5
}
