
resource "aws_instance" "instance_2" {
  instance_type = var.instance_type
  ami           = var.ami
  subnet_id = aws_subnet.subnet[1].id
  availability_zone = var.azs[1]
  key_name      = aws_key_pair.generated_key.key_name
  vpc_security_group_ids = [ "${aws_security_group.allow_tls_2.id}" ]
  associate_public_ip_address = var.associate_public_ip_address_2
  user_data = file(var.user_data)
}