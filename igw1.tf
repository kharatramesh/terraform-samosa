resource "aws_internet_gateway" "trainer-igw1" {
  vpc_id = aws_vpc.wipro-vpc1.id
  tags = {
    "Name" = "trainer-igw1"
  }
}

resource "aws_route_table" "trainer-rt1" {
  vpc_id = aws_vpc.wipro-vpc1.id
  route {
    cidr_block = "41.41.0.0/24"
    gateway_id = "local"
  }
  tags = {
    "Name" ="route-trainer-rt1"
  }
}
resource "aws_route_table_association" "trainer-route1-a1" {
  subnet_id = aws_subnet.wipro-vpc1-s1.id
  #subnet_id = aws_subnet.wipro-vpc1-s2.id
  route_table_id = aws_route_table.trainer-rt1.id
}

resource "aws_route_table_association" "trainer-route1-b1" {
#   subnet_id = aws_subnet.wipro-vpc1-s1.id
  subnet_id = aws_subnet.wipro-vpc1-s2.id
  route_table_id = aws_route_table.trainer-rt1.id
}