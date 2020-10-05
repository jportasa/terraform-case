provider "aws" {
  region = "eu-west-1"
}

terraform {
  required_version = "0.13.4"
  backend "s3" {
    bucket = "terraform-case"
    region = "eu-west-1"
  }
}

data "terraform_remote_state" "eu-remote-state" {
  backend = "s3"
  config {
    bucket = "terraform-case"
    key    = "global_${var.env}_eu-west-1.tfstate"
    region = "eu-west-1"
  }
}