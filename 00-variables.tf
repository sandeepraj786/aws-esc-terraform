variable "app_name" {}

variable "environment" {}

# variable "default_region" {}

variable "access_key" {
  type = string
  description = "The AWS access key."
}

variable "secret_key" {
  description = "The AWS secret key."
  type = string
}


variable "region" {
  description = "The AWS region to create resources in."
  default = "us-east-2"
}