resource "aws_launch_configuration" "ecs_launch_config" {
  image_id                    = "${var.ec2_ami_id}"
  iam_instance_profile        = aws_iam_instance_profile.ecs.arn
  security_groups             = [aws_security_group.ecs_task.id]
  user_data                   = "#!/bin/bash\necho ECS_CLUSTER=${var.cluster_name} >> /etc/ecs/ecs.config"
  instance_type               = "${var.ec2_instance_type}"
  associate_public_ip_address = true
}

resource "aws_autoscaling_group" "ecs_ec2_asg" {
  name                 = "ECS EC2 ASG"
  vpc_zone_identifier  = aws_subnet.private.*.id
  launch_configuration = aws_launch_configuration.ecs_launch_config.name

  desired_capacity          = "${var.desired_capacity}"
  min_size                  = "${var.min_size}"
  max_size                  = "${var.max_size}"
  health_check_grace_period = "${var.health_check_grace_period}"
  health_check_type         = "${var.health_check_type}"
}

resource "aws_iam_instance_profile" "ecs" {
  name = "ecs-ec2-cluster"
  role = aws_iam_role.ecs.name
}

resource "aws_iam_role" "ecs" {
  name               = "ecs-ec2-role"
  assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "sts:AssumeRole",
            "Principal": {
               "Service": "ec2.amazonaws.com"
            },
            "Effect": "Allow",
            "Sid": ""
        }
    ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "ecs_attach" {
  role       = aws_iam_role.ecs.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceforEC2Role"
}