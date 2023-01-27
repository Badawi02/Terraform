resource "aws_route_table" "route-table" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block      = var.cidr_block_route_table
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = var.Name_route_table
  }
}


resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.subnet[0].id
  route_table_id = aws_route_table.route-table.id
}

