# Author    : Ranjit Kumar Swain
# Web       : www.ranjitswain.com
# YouTube   : https://www.youtube.com/c/ranjitswain
# GitHub    : https://github.com/ranjit4github
########################################################

/*resource "aws_lb" "front_end" {
  name               = "test-lb-tf"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.allow_tls.id]
  subnets            = data.aws_subnets.sid.ids

  enable_deletion_protection = true

  tags = {
    Environment = "test"
  }
}

resource "aws_lb_target_group" "front_end" {
  name     = "tf-example-lb-tg"
  port     = 80
  protocol = "HTTP"
  target_type = "instance"
  vpc_id   = aws_vpc.main.id
}

resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.front_end.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.front_end.arn
  }
}

resource "aws_lb_target_group_attachment" "front_end1" {
  target_group_arn = aws_lb_target_group.front_end.arn
  target_id        = aws_instance.web1.id
  port             = 80
}

resource "aws_lb_target_group_attachment" "front_end2" {
  target_group_arn = aws_lb_target_group.front_end.arn
  target_id        = aws_instance.web2.id
  port             = 80
}*/