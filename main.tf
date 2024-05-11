module "vpc" {
  source                   = "./vendor/modules/vpc"     # Terrafile is going to download the code from the respective branch of the repo and keeps it local
  VPC_CIDR                 = var.VPC_CIDR
  ENV                      = var.ENV
  PUBLIC_SUBNET_CIDR       = var.PUBLIC_SUBNET_CIDR
  PRIVATE_SUBNET_CIDR      = var.PRIVATE_SUBNET_CIDR 
  AZ                       = var.AZ
  DEFAULT_VPC_ID           = var.DEFAULT_VPC_ID
  DEFAULT_VPC_CIDR         = var.DEFAULT_VPC_CIDR
  DEFAULT_VPC_RT           = var.DEFAULT_VPC_RT
  PRIVATE_HOSTED_ZONE_ID   = var.PRIVATE_HOSTED_ZONE_ID
  PRIVATE_HOSTED_ZONE_NAME = "roboshop.internal" 
  PUBLIC_HOSTED_ZONE_ID    = "Z00908651I4NMD9MY1ZCG" 
  PUBLIC_HOSTED_ZONE_NAME  = "robot51.tk" 
}