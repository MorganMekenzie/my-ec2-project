data "aws_ami" "aws_basic_linux" {
  owners = ["137112412989"]
  most_recent = true
  filter {
    name   = "name"
    values = [var.aws_ami_name]
  }
}

data "aws_vpc" "main_vpc" {
  filter {
    name   = "tag:Name"
    values = [var.vpc_name]

  }
}

data "aws_subnet" "public" {
  filter {
    name   = "tag:Name"
    values = [var.public_subnet_name]
  }
}