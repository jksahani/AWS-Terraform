resource "aws_vpc" "main" {
  cidr_block = var.vpc
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet

}

resource "aws_network_interface" "main" {
  subnet_id   = aws_subnet.main.id
  private_ips = var.privateip

  tags = {
    Name = "primary_network_interface"
  }
}
