module "vpc" {
  source      = "./vendor/modules/vpc"
  VPC_CIDR    = var.VPC_CIDR
  ENV         = var.ENV  # Assuming the module expects a reference to the created VPC
  }
