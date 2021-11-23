environment    = "preprod"


  ec2_ami_id        = "ami-0adc4758ea76442e2"
# ec2_key_name      = "key-pair"
  ec2_instance_type = "t2.micro"
  cluster_name       = "Masspay-preprod"




 container_port    = 80
 app_name          = "web-server"
 app_image         = "httpd:2.4"
 app_desired_count  = 1
 container_memory =  300
 cpu              =  10


//ECS Autoscaling group

  desired_capacity            =  1
  min_size                  =  1
  max_size                  =  1
  health_check_grace_period =  300
  health_check_type         =  "EC2"