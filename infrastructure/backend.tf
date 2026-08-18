terraform {
  backend "s3" {
    bucket       = "springboot-aws-terraform-state-shop-bucket"
    key          = "production/terraform.tfstate"
    region       = "ap-south-1"
    encrypt      = true
    use_lockfile = true
  }
}