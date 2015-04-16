resource "aws_internet_gateway" "mts-igw" {
  vpc_id = "${aws_vpc.mts-example.id}"
  tags {
    Name = "mts-igw"
  }
}

resource "aws_route_table" "public" {
  vpc_id = "${aws_vpc.mts-example.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.mts-igw.id}"
  }

  tags {
    Name = "mts-public"
  }
}
