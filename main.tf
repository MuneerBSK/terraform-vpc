module "vpc" {
  source    = "./vendor/modules/vpc"     # Terrafile is going to download the code from the respective branch of the repo and keeps it local
  vpc_cidr  = var.VPC_CIDR
}
