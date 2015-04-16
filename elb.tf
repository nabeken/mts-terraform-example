resource "aws_elb" "mts-elb" {
  name = "mts-elb"
  subnets = [
    "${aws_subnet.elb-1a.id}",
  ]

  security_groups = ["${aws_security_group.elb.id}"]

  listener {
    instance_port = 80
    instance_protocol = "http"
    lb_port = 80
    lb_port = "80"
    lb_protocol = "http"
  }

  health_check {
    healthy_threshold = 2
    unhealthy_threshold = 2
    timeout = 3
    target = "HTTP:80/"
    interval = 5
  }

  cross_zone_load_balancing = true

  tags {
    Name = "mts-elb"
  }
}
