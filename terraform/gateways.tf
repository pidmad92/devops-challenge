resource "aws_internet_gateway" "devops-challenge-env-gw" {
  vpc_id = "${aws_vpc.devops-challenge-env.id}"
tags {
    Name = "devops-challenge-env-gw"
  }
}