region = "us-east-1"

cidr_block_vpc = "10.0.0.0/16"

Name_vpv = "main"

Name_IGW = "IGW"

subnet_cidr = ["10.0.0.0/24", "10.0.1.0/24"]

azs = ["us-east-1a", "us-east-1b"]

Name_security_group = "security_group-1"

Name_security_group_2 = "security_group-2"

Ports_security_group = [80 , 22 , 0]

Protocol_security_group = ["tcp" , "-1"] 

cidr_security_group = "0.0.0.0/0"

cidr_block_route_table = "0.0.0.0/0"

Name_route_table = "route-table"

instance_type = "t2.micro"

ami = "ami-00874d747dde814fa"

associate_public_ip_address = "true"

associate_public_ip_address_2 = "false"

user_data = "userdata.tpl"

key_name = "private-key-ec2"

algorithm_key = "RSA"

rsa_bits_key = 4096

vpc_eip = true

Name_eip = "t4-elasticIP"

Name_nat = "nat-gateway"

Name_route_table_2 = "route_table_2"