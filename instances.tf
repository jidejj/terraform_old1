resource "aws_instance" "main" {
  count = length(var.availability_zones)

  ami           = var.environment == "dev" ? var.ami_ids.dev : var.ami_ids.prod
  instance_type = var.instance_type
  subnet_id     = aws_subnet.main[count.index].id

  tags = {
    Name = format("%s-instance-%02d", var.environment, count.index + 1)
  }
} 



