
provider "aws" {
  region = "${var.reg}"
}
resource "aws_vpc" "exam" {
    cidr_block = "${var.cidr_vpc}"
    instance_tenancy = "deafult"
}
tags {
    Name = "myvpc"
}
resource "aws_subnet" "subnet1" {
    vpc_id = "${aws_vpc.exam.id}"
      cidr_block = "${var.cidr_subnet}"
}
tags {
    Name = "subnetvpc"
}
