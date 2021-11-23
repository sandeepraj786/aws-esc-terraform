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

 variable "app_desired_count" {}
 variable "health_check_type" {
   
 }
 variable "ec2_ami_id" {
   
 }
 variable "ec2_instance_type" {
   
 }
 variable "cluster_name" {
   
 }
 variable "app_image" {
   
 }
 variable "min_size" {
   
 }
 variable "max_size" {
   
 }
 variable "desired_capacity" {
   
 }
 variable "health_check_grace_period" {
   
 }
 variable "container_memory" {
   
 }
 variable "cpu" {
   
 }
   
 variable "container_port" {
   description = "Container port for exposing the services"
}




variable "region" {
  description = "The AWS region to create resources in."
  default = "us-east-2"
}




