module "vpc" {
  source      = "./vendor/modules/vpc"
  VPC_CIDR    = var.VPC_CIDR  # Assuming the module expects a reference to the created VPC
  }
