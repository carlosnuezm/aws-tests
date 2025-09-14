# Create a VPC
resource "aws_vpc" "eks-vpc" {
  cidr_block = "10.0.0.0/16"
  instance_tenancy = "default"
  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    Name = "eks-vpc"
  }
}

resource "aws_subnet" "eks-subnet-private-us-west-2a" {
  vpc_id     = aws_vpc.eks-vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-west-2a"
  
  tags = {
    Name = "eks-subnet-private-us-west-2a"
  }
}

resource "aws_subnet" "eks-subnet-private-us-west-2b" {
  vpc_id     = aws_vpc.eks-vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-west-2b"
  
  tags = {
    Name = "eks-subnet-private-us-west-2b"
  }
}

resource "aws_subnet" "eks-subnet-private-us-west-2c" {
  vpc_id     = aws_vpc.eks-vpc.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "us-west-2c"
  
  tags = {
    Name = "eks-subnet-private-us-west-2c"
  }
}