module "vpc" {  
  source      = "./vendor/modules/vpc"
  CIDR_VPC    = var.CIDR_VPC  # Assuming the module expects a reference to the created VPC
  
  
  }
