provider "aws" {
  region = "${var.region}"
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
}

# terraform {
#   backend "s3" {
#     bucket = "ecs-ec2-tf-state"
#     key    = "terraform.tfstate"
#     region = "us-east-1"
#   }
# }

# data "aws_caller_identity" "current" {}