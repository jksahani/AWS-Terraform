resource "aws_instance" "ec2" {
  ami           = var.instanceid
  instance_type = var.instancesize

  network_interface {
    network_interface_id = var.network_interface_id
    device_index         = 0
  }
}