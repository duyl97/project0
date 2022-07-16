terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "ec2_instances" {
  source = "./modules/ec2_instances"

  key_name = module.aws_key_pair.ssh_key_name
}
module "vpc" {
  source = "./modules/vpc"
}
module "aws_key_pair" {
  source = "./modules/aws_key_pair"
}