provider "aws" {
  region = "${var.region}"
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
}

terraform {
  backend "s3" {
    bucket = "terraform-bucket-s3-123"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }
}

# data "aws_caller_identity" "current" {}