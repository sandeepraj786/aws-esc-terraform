variable "app_name" {}

variable "environment" {}

# variable "default_region" {}

variable "access_key" {
  type = string
  description = "The AWS access key."
  #default = "key2"
}

variable "secret_key" {
  description = "The AWS secret key."
  type = string
 # default="key1"
}


variable "region" {
  description = "The AWS region to create resources in."
  default = "us-east-2"
}