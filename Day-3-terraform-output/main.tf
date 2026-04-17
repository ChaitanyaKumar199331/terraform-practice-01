resource "aws_vpc" "name" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "dev-vpc"
  }
}

resource "aws_subnet" "name" {
  vpc_id = aws_vpc.name.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "dev-public-subnet-1a"
  }
}

resource "aws_instance" "name" {
  subnet_id = aws_subnet.name.id
  ami = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name = "dev-ec2-instance"
  }
}