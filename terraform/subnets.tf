resource "aws_route_table" "route-table-devops-challenge-env" {
  vpc_id = "${aws_vpc.devops-challenge-env.id}"
route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.devops-challenge-env-gw.id}"
  }
  tags {
    Name = "devops-challenge-env-route-table"
  }
}
resource "aws_route_table_association" "subnet-association" {
  subnet_id      = "${aws_subnet.subnet-uno.id}"
  route_table_id = "${aws_route_table.route-table-devops-challenge-env.id}"
}