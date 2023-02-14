# Defining Region
variable "region" {
    default = "us-east-1"
  
}

#Ami for webapp servers
variable "ami" {
    default = "ami-0aa7d40eeae50c9a9"
}

#Instance Type
variable "instance_type" {
    default = "t2.micro"
}

# Defining CIDR Block for VPC
variable "threetier" {
    default = "10.0.0.0/16"
}

# Defining CIDR Block for webtier1 Subnet
variable "webtier1subnet" {
  default = "10.0.1.0/24"
}

# Defining CIDR Block for webtier2 Subnet
variable "webtier2subnet" {
  default = "10.0.2.0/24"
}

# Defining CIDR Block for appserver1 Subnet
variable "app1subnet" {
   default = "10.0.3.0/24"
}

# Defining CIDR Block for appserver2 Subnet
variable "app2subnet" {
  default = "10.0.4.0/24"
}

# Defining CIDR Block for dbserver1 Subnet
variable "db1subnet" {
   default = "10.0.5.0/24"
}

# Defining CIDR Block for dbserver2 Subnet
variable "db2subnet" {
  default = "10.0.6.0/24"
}