# Creating External LoadBalancer
resource "aws_lb" "external-alb" {
  name               = "External LB"
  internal           = false
  load_balancer_type = "application"
  security_groups    = aws_security_group.webtiersg.id
  subnets            = [aws_subnet.webtier1subnet.id, aws_subnet.webtier2subnet.id]
}

resource "aws_lb_target_group" "target-elb" {
  name     = "ALB TG"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.threetier.id
}

resource "aws_lb_target_group_attachment" "attachment" {
  target_group_arn = aws_lb_target_group.external-alb.arn
  target_id        = aws_instance.webtier1instance.id
  port             = 80

  depends_on = [
    aws_instance.webtier1instance,
  ]
}

resource "aws_lb_target_group_attachment" "attachment1" {
  target_group_arn = aws_lb_target_group.external-alb.arn
  target_id        = aws_instance.webtier2instance.id
  port             = 80

  depends_on = [
    aws_instance.webtier2instance,
  ]
}

resource "aws_lb_listener" "external-elb" {
  load_balancer_arn = aws_lb.external-alb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.external-alb.arn
  }
}