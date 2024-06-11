provider "aws" {
  region  = "ap-south-1"
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "ck-dev"
  cidr = "10.0.0.0/16"

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
