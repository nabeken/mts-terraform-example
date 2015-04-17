resource "aws_subnet" "elb-1a" {
  vpc_id = "${aws_vpc.mts-example.id}"
  availability_zone = "ap-northeast-1a"
  cidr_block = "10.0.1.0/24"
  tags {
    Name = "mts-subnet-elb-1a"
  }
}

resource "aws_subnet" "web-1a" {
  vpc_id = "${aws_vpc.mts-example.id}"
  availability_zone = "ap-northeast-1a"
  cidr_block = "10.0.3.0/24"
  tags {
    Name = "mts-subnet-web-1a"
  }
}
