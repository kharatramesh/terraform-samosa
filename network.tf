resource "aws_vpc" "wipro-vpc1" {
  cidr_block = "41.41.0.0/24"
  tags = {
    "Name" = "trainer-aws-vpc1"
  }
}

resource "aws_subnet" "wipro-vpc1-s1" {
  vpc_id     = aws_vpc.wipro-vpc1.id
  cidr_block = "41.41.0.0/25"
  tags = {
    "Name" = "wipro-vpc1-s1"
  }
}

resource "aws_subnet" "wipro-vpc1-s2" {
  vpc_id     = aws_vpc.wipro-vpc1.id
  cidr_block = "41.41.0.128/25"
  tags = {
    "Name" = "wipro-vpc1-s2"
  }
}
