provider "aws" {
  region  = "ap-south-1"
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "ck-gk"
  cidr = "10.0.1.0/16"

  tags = {
    Terraform = "true"
    Environment = "prod"
  }
}
