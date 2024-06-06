# Root Module :  The place where you run the terraform command is called root module

provider "aws" {}

terraform {
  backend "s3" {
    bucket = "b56-terraform-state-bucket-devops"
    key    = "basics/terraform.tfstate"
    region = "us-east-1"
  }
}

## Calling a Module
module "local-module" {
    source = "./local"
}