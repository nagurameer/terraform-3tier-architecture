# Creating 1st EC2 instance in Public Subnet
resource "aws_instance" "webtier1instance" {
  ami                         = var.ami
  instance_type               = var.instance_type
  count                       = 1
  key_name                    = "tests"
  vpc_security_group_ids      = aws_security_group.webtiersg.id
  subnet_id                   = aws_subnet.webtier1subnet.id
  associate_public_ip_address = true
  user_data                   = "${file("data.sh")}"

  tags = {
    Name = "My Public Instance"
  }
}

# Creating 2nd EC2 instance in Public Subnet
resource "aws_instance" "webtier2instance"" {
  ami                         = var.ami
  instance_type               = var.instance_type
  count                       = 1
  key_name                    = "tests"
  vpc_security_group_ids      = aws_security_group.webtiersg.id
  subnet_id                   = aws_subnet.webtier2subnet.id
  associate_public_ip_address = true
  user_data                   = "${file("data.sh")}"

  tags = {
    Name = "My Public Instance 2"
  }
}