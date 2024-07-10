resource "aws_security_group" "sg1" {
  name = "wipro-sg1-10-07"
  #   vpc_id = aws_vpc.wipro-vpc1.id
  #vpc_id = aws_subnet.wipro-vpc1-s1.id
  vpc_id = aws_vpc.wipro-vpc1.id

  tags = {
    "Name" = "wipro-sg1-10-07"
  }
  dynamic "ingress" {
    for_each = var.portopen
    content {
      from_port   = ingress.value.from_port
      to_port     = ingress.value.to_port
      description = ingress.value.description
      protocol    = ingress.value.protocol
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

#   dynamic "egress" {
#     for_each = var.egressportopen
#     content {
#       from_port   = egress.value.from_port
#       to_port     = egress.value.to_port
#       description = egress.value.description
#       protocol    = egress.value.protocol
#       cidr_blocks = ["0.0.0.0/0"]

      
#     }
    
#   }
}

