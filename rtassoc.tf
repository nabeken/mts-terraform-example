resource "aws_route_table_association" "public-elb-1a" {
  subnet_id = "${aws_subnet.elb-1a.id}"
  route_table_id = "${aws_route_table.public.id}"
}

resource "aws_route_table_association" "public-elb-1c" {
  subnet_id = "${aws_subnet.elb-1c.id}"
  route_table_id = "${aws_route_table.public.id}"
}

resource "aws_route_table_association" "public-web-1a" {
  subnet_id = "${aws_subnet.web-1a.id}"
  route_table_id = "${aws_route_table.public.id}"
}

resource "aws_route_table_association" "public-web-1c" {
  subnet_id = "${aws_subnet.web-1c.id}"
  route_table_id = "${aws_route_table.public.id}"
}
