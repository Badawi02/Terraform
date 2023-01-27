resource "aws_route_table" "route-table-2" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = var.cidr_block_route_table
    gateway_id = aws_nat_gateway.nat-gateway.id
  }

  tags = {
    Name = var.Name_route_table_2
  }
}


resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.subnet[1].id
  route_table_id = aws_route_table.route-table-2.id
}
