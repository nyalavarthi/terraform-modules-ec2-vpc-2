provider "aws" {
  region = "eu-central-1"
}

module "my_vpc" {
  source      = "../modules/vpc"
  vpc_cidr    = "10.143.106.0/25"
  tenancy     = "default"
  vpc_id      = "${module.my_vpc.vpc_id}"
  subnet_cidr = "10.143.106.0/25"
}

module "my_ec2" {
  source        = "../modules/ec2"
  ec2_count     = 1
  ami_id        = "ami-010fae13a16763bb4"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0950445cf74df8154"
}
