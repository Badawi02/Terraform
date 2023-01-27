# vars of provider 
variable "region" {
  type = string
}


# vars of vpc 
variable "cidr_block_vpc" {
  type = string
}
variable "Name_vpv" {
  type = string
}

# vars of internat gatway
variable "Name_IGW" {
  type = string
}


# vars of subnet
variable "subnet_cidr" {
  type = list
}
variable "azs" {
	type = list
	
}


# vars of security group 1
variable "Name_security_group" {
  type = string
}
variable "Ports_security_group" {
  type = list
}
variable "Protocol_security_group" {
  type = list
}
variable "cidr_security_group" {
  type = string
}



# vars of security group 2
variable "Name_security_group_2" {
  type = string
}


# vars of route-table
variable "cidr_block_route_table" {
  type = string
}
variable "Name_route_table" {
  type = string
}


# vars of public ec2
variable "instance_type" {
  type = string
}
variable "ami" {
  type = string
}
variable "associate_public_ip_address" {
  type = string
}
variable "user_data" {
  type = string
}
variable "key_name" {
  type = string
}
variable "algorithm_key" {
  type = string
}
variable "rsa_bits_key" {
    type = number
}



# vars of private ec2
variable "associate_public_ip_address_2" {
  type = string
}


# vars of nat_get_way
variable "vpc_eip" {
    type = bool
}
variable "Name_eip" {
    type = string
}
variable "Name_nat" {
    type = string
}


#  vars of route_table_2
variable "Name_route_table_2" {
    type = string
}