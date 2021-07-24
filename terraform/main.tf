terraform {
}

provider "aws" {
  region  = "ap-northeast-1"
  profile = "terraform"
}

module "network" {
  source   = "./modules/aws/network"
  vpc_cidr = "10.0.0.0/16"
}
