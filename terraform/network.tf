resource "aws_vpc" "devops-challenge-env" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support = true
  tags {
    Name = "devops-challenge-env"
  }
}

resource "aws_eip" "ip-devops-challenge-env" {
  instance = "${aws_instance.devops-challenge-ec2-instance.id}"
  vpc      = true
}