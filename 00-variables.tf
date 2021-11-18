variable "app_name" {}

variable "environment" {}

# variable "default_region" {}

variable "TF_VAR_aws_access_key" {
  description = "The AWS access key."
}

variable "TF_VAR_aws_secret_key" {
  description = "The AWS secret key."
}

variable "region" {
  description = "The AWS region to create resources in."
  default = "us-east-2"
}