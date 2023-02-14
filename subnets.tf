# Creating webtier1 subnet
resource "aws_subnet" "webtier1subnet" {
    vpc_id = aws_vpc.threetier.id
    cidr_block = var.webtier1subnet
    availability_zone = "us-east-1a"

    tags = {
      "Name" = "webappsubnet1"
    }
  
}

# Creating webtier2 subnet
resource "aws_subnet" "webtier2subnet" {
    vpc_id = aws_vpc.threetier.id
    cidr_block = aws_subnet.webtier2subnet
    availability_zone = "us-east-1b"

    tags = {
      "Name" = "webappsubnet2"
    }
}

# Creating appserver subnet1
resource "aws_subnet" "appserver1subnet" {
    vpc_id = aws_vpc.threetier.id
    cidr_block = var.app1subnet 
    availability_zone = "us-east-1a"

    tags = {
      "Name" = "app1subnet"
    }
  
}

# Creating appserver subnet2
resource "aws_subnet" "appserver2subnet" {
    vpc_id = aws_vpc.threetier.id
    cidr_block = var.app2subnet  
    availability_zone = "us-east-1b"

    tags = {
      "Name" = "app2subnet"
    }
  
}

# Creating database server subnet1
resource "aws_subnet" "db1subnet" {
    vpc_id = aws_vpc.threetier.id
    cidr_block = var.db1subnet
    availability_zone = "us-east-1a"

    tags = {
      "Name" = "Db1subnet"
    }
  
}

# Creating database server subnet2
resource "aws_subnet" "db2subnet" {
    vpc_id = aws_vpc.threetier.id
    cidr_block = var.db2subnet
    availability_zone = "us-east-1b"

    tags = {
      "Name" = "db2subnet"
    }
  
}