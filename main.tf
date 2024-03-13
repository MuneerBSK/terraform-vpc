module "vpc" {
  source = "./vendor/modules/vpc"
  vpc    = var.VPC_CIDR
}
