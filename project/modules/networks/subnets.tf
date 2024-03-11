# Create the public subnet
resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.1.0/24"  # Specify your desired public subnet CIDR block
# availability_zone = var.availability_zone_a # Replace with your desired AZ
  tags = {
    Name = "public-subnet"
  }
}

# Create the private subnet
resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.2.0/24"  # Specify your desired private subnet CIDR block
# availability_zone = var.availability_zone_b  # Replace with your desired AZ
  tags = {
    Name = "private-subnet"
  }
}

output "public" {
  value       = aws_subnet.public_subnet.id
  description = "The ID of the public subnet"
}
