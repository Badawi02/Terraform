resource "aws_eip" "ip" {
  vpc      = var.vpc_eip
  tags = {
    Name = var.Name_eip
  }
}


resource "aws_nat_gateway" "nat-gateway" {
  allocation_id = "${aws_eip.ip.id}"
  subnet_id      = aws_subnet.subnet[0].id

  tags = {
    Name = var.Name_nat
  }
}