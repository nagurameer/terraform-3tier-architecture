# Creating Internet Gateway 
resource "aws_internet_gateway" "threetiergw" {
  vpc_id = aws_vpc.threetier.id
}