# terraform aws create apllication load balancer
resource "aws_lb" "application_load_balancer" {
  name               = "dev-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb_security_group.id]

  subnet_mapping {
    subnet_id = aws_subnet.public_subnet_az1
  }

  subnet_mapping {
    subnet_id = aws_subnet.public_subnet_az2
  }

  enable_deletion_protection = false

  tags = {
    Name = "dev-alb"
  }
}

# terraform aws create target group
resource "aws_lb_target_group" "alb_target_group" {
  name        = 
  target_type = 
  port        = 
  protocol    = 
  vpc_id      = 

  health_check {
    healthy_threshold   = 
    interval            = 
    matcher             = 
    path                = 
    port                = 
    protocol            = 
    timeout             = 
    unhealthy_threshold = 
  }
}

# terraform aws create listener
resource "aws_lb_listener" "alb_http_listener" {
  load_balancer_arn = aws_lb.application_load_balancer.arn
  port              = 
  protocol          = 

  default_action {
    type = 

    redirect {
      host        = 
      path        = 
      port        = 
      protocol    = 
      status_code = 
    }
  }
}

# terraform aws create listener
resource "aws_lb_listener" "alb_https_listener" {
  load_balancer_arn  = aws_lb.application_load_balancer.arn
  port               = 
  protocol           = 
  ssl_policy         = "ELBSecurityPolicy-2016-08"
  certificate_arn    = 

  default_action {
    type             = 
    target_group_arn = 
  }
}