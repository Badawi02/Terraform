
resource "aws_instance" "instance" {
  instance_type = var.instance_type
  ami           = var.ami
  subnet_id = aws_subnet.subnet[0].id
  availability_zone = var.azs[0]
  key_name      = aws_key_pair.generated_key.key_name
  vpc_security_group_ids = [ "${aws_security_group.allow_tls.id}" ]
  associate_public_ip_address = var.associate_public_ip_address
  user_data = file(var.user_data)
}

resource "aws_key_pair" "generated_key" {
  key_name   = var.key_name
  public_key = tls_private_key.example.public_key_openssh
}

resource "tls_private_key" "example" {
  algorithm = var.algorithm_key
  rsa_bits  = var.rsa_bits_key
}