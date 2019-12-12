provider "aws" {
  region = "ap-south-1"
}
/*
module "my_vpc" {
  source      = "../modules/vpc"
  vpc_cidr    = "172.31.0.0/16"
  tenancy     = "default"
  vpc_id      = "${module.my_vpc.vpc_id}"
  subnet_cidr = "172.31.0.0/16"
}
*/
module "my_ec2" {
  source        = "../modules/ec2"
  ec2_count     = 1
  ami_id        = "ami-010fae13a16763bb4"
  instance_type = "t2.micro"
  subnet_id     = "subnet-00e08f4c30ad51bf2"
}
