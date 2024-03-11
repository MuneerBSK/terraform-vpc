module "vpc" {
  source                   = "git::https://github.com/MuneerBSK/tf-module-vpc.git"     # Terrafile is going to download the code from the respective branch of the repo and keeps it local
}
