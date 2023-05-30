# terraform aws allocate elastic ip
resource "aws_eip" "eip_for_nat_gateway_az1" {
  vpc    = 

  tags   = {
    Name = 
  }
}

# terraform aws allocate elastic ip
resource "aws_eip" "eip_for_nat_gateway_az2" {
  vpc    = 

  tags   = {
    Name = 
  }
}

# terraform create aws nat gateway
resource "aws_nat_gateway" "nat_gateway_az1" {
  allocation_id = 
  subnet_id     = 

  tags   = {
    Name = 
  }

  # internet gateway for the vpc.
  depends_on = 
}

# terraform create aws nat gateway
resource "aws_nat_gateway" "nat_gateway_az2" {
  allocation_id = 
  subnet_id     = 

  tags   = {
    Name = 
  }

 
  #internet gateway for the vpc.
  depends_on = 
}

# terraform aws create route table
resource "aws_route_table" "private_route_table_az1" {
  vpc_id            = 

  route {
    cidr_block      = 
    nat_gateway_id  = 
  }

  tags   = {
    Name = 
  }
}

# terraform aws associate subnet with route table
resource "aws_route_table_association" "private_app_subnet_az1_route_table_az1_association" {
  subnet_id         = 
  route_table_id    = 
}

# terraform aws associate subnet with route table
resource "aws_route_table_association" "private_data_subnet_az1_route_table_az1_association" {
  subnet_id         = 
  route_table_id    = 
}

# terraform aws create route table
resource "aws_route_table" "private_route_table_az2" {
  vpc_id            = aws_vpc.vpc.id

  route {
    cidr_block      = 
    nat_gateway_id  = 
  }

  tags   = {
    Name = 
  }
}

# terraform aws associate subnet with route table
resource "aws_route_table_association" "private_app_subnet_az2_route_table_az2_association" {
  subnet_id         = 
  route_table_id    = 
}

# terraform aws associate subnet with route table
resource "aws_route_table_association" "private_data_subnet_az2_route_table_az2_association" {
  subnet_id         = 
  route_table_id    = 
}