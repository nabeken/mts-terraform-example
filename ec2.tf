resource "aws_instance" "mts-web-1a" {
  ami = "ami-cbf90ecb"
  instance_type = "c3.large"
  user_data = "#!/bin/bash\nyum install -y nginx\nservice nginx start"
  security_groups = ["${aws_security_group.web.id}"]
  subnet_id = "${aws_subnet.web-1a.id}"
  associate_public_ip_address = true
  tags {
    Name = "mts-web-1a"
  }
}
