# Creating VPC for three tier architecture
resource "aws_vpc" "threetier" {
    cidr_block = "var.cidr_blcok"
    instance_tenancy = "default"
    
    tags = {
        Name = "threetier"
    }
}