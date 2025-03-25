resource "aws_instance" "ec2" {
  ami           = var.instanceid
  instance_type = var.instancesize
}