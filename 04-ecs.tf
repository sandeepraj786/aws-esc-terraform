resource "aws_ecs_cluster" "ecs_cluster" {
  name = "${var.cluster_name}"
}

data "template_file" "task_definition_template" {
  template = file("task-definitions/service.json.tpl")

  vars={
  app_name          =  var.app_name
  app_image         = var.app_image
  container_port    = var.container_port
  cpu               = var.cpu
  container_memory  = var.container_memory

  }
}


resource "aws_ecs_task_definition" "task_definition" {
  family                   = "${var.app_name}"
  container_definitions    = data.template_file.task_definition_template.rendered
  requires_compatibilities = ["EC2"]
}

resource "aws_ecs_service" "app" {
  name            = "${var.app_name}-service"
  cluster         = aws_ecs_cluster.ecs_cluster.id
  task_definition = aws_ecs_task_definition.task_definition.arn
  launch_type     = "EC2"
  desired_count   = "${var.app_desired_count}"

  load_balancer {
    target_group_arn = aws_lb_target_group.app.arn
    container_name   = "${var.app_name}"
    container_port   = "${var.container_port}"
  }

  depends_on = [aws_lb_listener.http_forward]

  tags = {
    Environment = var.environment
    Application = var.app_name
  }
}