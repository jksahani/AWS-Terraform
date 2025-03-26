variable "instanceid" {
  description = "this is for ami id"
  default = "ami-05f08ad7b78afd8cd"
  type = string
}

variable "instancesize" {
  description = "this is for ec2 instance size"
  default = "t2.micro"
  type = string
}

variable "availability_zone" {
  default = "us-east-1a"
}

variable "storagename" {
  default = "terraforms3321313"
}
variable "storagename2" {
  default = "terraforms3321344"
}

variable "vpc_ip" {
  default = "10.2.0.0/16"
}

variable "vsubnet_ip" {
  default = "10.2.1.0/24"
}

variable "private_ips" {
  default = ["10.2.1.6"]
}