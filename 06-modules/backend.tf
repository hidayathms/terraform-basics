terraform {
  backend "s3" {
    bucket = "b56-terraform-state-bucket-devops"
    key    = "modules/terraform.tfstate"
    region = "us-east-1"
  }
}
