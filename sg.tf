resource "aws_security_group" "elb" {
  name = "mts-elb"
  description = "Allow traffic for elb"
  vpc_id = "${aws_vpc.mts-example.id}"

  ingress {
    protocol = "tcp"
    from_port = 80
    to_port = 80
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    protocol = "tcp"
    from_port = 80
    to_port = 80
    cidr_blocks = [
      "${aws_subnet.web-1a.cidr_block}",
      "${aws_subnet.web-1c.cidr_block}",
    ]
  }

  tags {
    Name = "mts-elb"
  }
}

resource "aws_security_group" "web" {
  name = "mts-web"
  description = "Allow traffic for web"
  vpc_id = "${aws_vpc.mts-example.id}"

  ingress {
    protocol = "tcp"
    from_port = 80
    to_port = 80
    cidr_blocks = [
      "${aws_subnet.elb-1a.cidr_block}",
      "${aws_subnet.elb-1c.cidr_block}",
    ]
  }

  egress {
    protocol = "tcp"
    from_port = 0
    to_port = 65535
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "mts-web"
  }
}

resource "aws_security_group" "db" {
  name = "mts-db"
  description = "Allow traffic for db"
  vpc_id = "${aws_vpc.mts-example.id}"

  ingress {
    protocol = "tcp"
    from_port = 5432
    to_port = 5433
    cidr_blocks = [
      "${aws_subnet.web-1a.cidr_block}",
      "${aws_subnet.web-1c.cidr_block}",
    ]
  }

  egress {
    protocol = "tcp"
    from_port = 0
    to_port = 65535
    cidr_blocks = [
      "${aws_subnet.web-1a.cidr_block}",
      "${aws_subnet.web-1c.cidr_block}",
    ]
  }

  tags {
    Name = "mts-db"
  }
}
