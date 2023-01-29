output "public_ec2-ip" {
  value       = aws_instance.instance.public_ip 
  
}
output "public_ec2-private-ip" {
    value = aws_instance.instance.private_ip
}
output "private_ec2-private-ip" {
    value = aws_instance.instance.private_ip
}
