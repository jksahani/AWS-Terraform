/*
resource "aws_vpc" "import" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_s3_bucket" "storage" {
  bucket = var.storagename
}

module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"
  bucket = "s3bucket01923"
  versioning = {
    enabled = true
  }
}

module "s3_bucket2" {
  source = "./Module/S3"
  bucket = "s3012test"
}


module "vpc" {
  source = "./Module/VPC"
  vpc = var.vpc_ip
  subnet = var.vsubnet_ip
  privateip = var.private_ips
}


module "ec2" {
  source = "./Module/EC2"
  instanceid = var.instanceid
  instancesize = var.instancesize
  network_interface_id = module.vpc.network_interface_id
}
*/

resource "aws_vpc" "vpc" {
  cidr_block = "10.2.0.0/16"
  tags = local.service-tag
}

resource "aws_subnet" "subnet" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.subnet.subnet1
  availability_zone = var.availability_zone
  tags = local.service-tag
}

resource "aws_subnet" "subnet1" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.subnet.subnet2
  availability_zone = var.availability_zone
  tags = local.service-tag
}

resource "aws_network_interface" "nic" {
  subnet_id   = aws_subnet.subnet.id
  private_ips = ["10.2.1.5"]
  tags = local.service-tag
}

resource "aws_instance" "dev" {
  ami           = var.instanceid
  instance_type = local.size

  network_interface {
    network_interface_id = aws_network_interface.nic.id
    device_index         = 0
  }
  tags = local.service-tag

}

#name = "${var.org}-${var.team}-${var.project}-${var.location}-vm"
