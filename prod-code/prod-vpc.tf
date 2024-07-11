provider "aws" {
  region  = "ap-south-1"
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "prod-VPC"
  cidr = "10.16.0.0/16"

  tags = {
    Terraform = "true"
    Environment = "prod"
    Application = "AIMS"
  }
}
