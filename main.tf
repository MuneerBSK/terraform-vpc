module "vpc" {
  source    = "./vendor/modules/vpc"
  vpc_cidr  = var.VPC_CIDR
}
