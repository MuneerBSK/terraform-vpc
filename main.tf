module "vpc" {
  source = "./vendor/modules/vpc"
  vpc    = aws_vpc.main.id  # Assuming the module expects a reference to the created VPC
}
