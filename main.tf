module "vpc" {
  source      = "./vendor/modules/vpc"
  VPC_CIDR    = var.CIDR_VPC  # Assuming the module expects a reference to the created VPC
}
