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
   
   


# variable "cpu" {
#   description = "CPU required to process the request from container"
#   default = 256
# }


# variable "container_memory" {
#     description = "Memory required for the container"
#     default = 512
# }

 variable "container_port" {
   description = "Container port for exposing the services"
}

# variable "container_name" {
#     type = string
#     description = "Name of the cluster"
# }


variable "region" {
  description = "The AWS region to create resources in."
  default = "us-east-2"
}



# variable "docker_image_name" {
#   type = string
#   description = "Docker image name use the complete format example docker.io/jhon123/myapp:latest, quay.io/jhon123/myapp:v2"
# }