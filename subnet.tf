resource "aws_subnet" "elb-1a" {
  vpc_id = "${aws_vpc.mts-example.id}"
  cidr_block = "10.0.1.0/24"
  tags {
    Name = "mts-subnet-elb-1a"
  }
}

resource "aws_subnet" "elb-1c" {
  vpc_id = "${aws_vpc.mts-example.id}"
  cidr_block = "10.0.2.0/24"
  tags {
    Name = "mts-subnet-elb-1c"
  }
}

resource "aws_subnet" "web-1a" {
  vpc_id = "${aws_vpc.mts-example.id}"
  cidr_block = "10.0.3.0/24"
  tags {
    Name = "mts-subnet-web-1a"
  }
}

resource "aws_subnet" "web-1c" {
  vpc_id = "${aws_vpc.mts-example.id}"
  cidr_block = "10.0.4.0/24"
  tags {
    Name = "mts-subnet-web-1c"
  }
}

resource "aws_subnet" "db-1a" {
  vpc_id = "${aws_vpc.mts-example.id}"
  cidr_block = "10.0.5.0/24"
  tags {
    Name = "mts-subnet-db-1a"
  }
}

resource "aws_subnet" "db-1c" {
  vpc_id = "${aws_vpc.mts-example.id}"
  cidr_block = "10.0.6.0/24"
  tags {
    Name = "mts-subnet-db-1c"
  }
}
