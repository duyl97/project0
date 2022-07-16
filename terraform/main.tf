terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

module "ec2_instances" {
  source = "./modules/ec2_instances"
}

module "vpc" {
  source = "./modules/vpc"
}