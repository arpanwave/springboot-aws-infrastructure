data "aws_availability_zones" "available" {
  state = "available"
}

module "vpc" {
  source = "./modules/vpc"

  project_name = var.project_name
  environment  = var.environment

  vpc_cidr = var.vpc_cidr

  availability_zones = slice(
    data.aws_availability_zones.available.names,
    0,
    2
  )

  public_subnet_cidrs = [
    "10.0.0.0/20",
    "10.0.16.0/20"
  ]

  private_subnet_cidrs = [
    "10.0.32.0/20",
    "10.0.48.0/20"
  ]
}