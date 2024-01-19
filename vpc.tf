resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  tags       = var.vpc_tags
}

resource "aws_subnet" "main" {
  count                  = length(var.availability_zones)
  cidr_block             = var.environment == "dev" ? cidrsubnet(var.vpc_cidr, 8, count.index) : cidrsubnet(var.vpc_cidr, 8, 100 + count.index)
  availability_zone      = var.availability_zones[count.index]
  vpc_id                 = aws_vpc.main.id
  map_public_ip_on_launch = true
  tags = {
    Name = format("%s-subnet-%02d", var.environment, count.index + 1)
  }
}



 
