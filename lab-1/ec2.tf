
resource "aws_instance" "instance" {
  instance_type = "t2.micro"
  ami           = "ami-00874d747dde814fa"
  subnet_id = aws_subnet.subnet.id
  tags = {
    type = "terraform-public-instance"
  }
  key_name      = aws_key_pair.generated_key.key_name
  vpc_security_group_ids = [ "${aws_security_group.allow_tls.id}" ]
  associate_public_ip_address = "true"
  user_data = file("userdata.tpl")

}

resource "aws_key_pair" "generated_key" {
  key_name   = "private-key-ec2"
  public_key = tls_private_key.example.public_key_openssh
}

resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits  = 4096
}