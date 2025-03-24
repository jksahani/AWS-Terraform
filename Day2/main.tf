resource "aws_vpc" "import" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_s3_bucket" "storage" {
  bucket = var.storagename
}

resource "aws_vpc" "vpc" {
  cidr_block = "10.1.1.0/24"
}

resource "aws_subnet" "subnet" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "10.1.1.0/25"
  availability_zone = var.availability_zone
}

resource "aws_network_interface" "nic" {
  subnet_id   = aws_subnet.subnet.id
  private_ips = ["10.1.1.5"]
}

resource "aws_instance" "ec2" {
  ami           = var.instanceid
  instance_type = var.instancesize

  network_interface {
    network_interface_id = aws_network_interface.nic.id
    device_index         = 0
  }

}
