resource "aws_instance" "devops-challenge-ec2-instance" {
  ami = "${var.ami_id}"
  instance_type = "t3a.nano"
  key_name = "${var.ami_key_pair_name}"
  security_groups = ["${aws_security_group.ingress-all-devops-challenge.id}"]
  tags {
    Name = "${var.ami_name}"
  }
subnet_id = "${aws_subnet.subnet-uno.id}"
}