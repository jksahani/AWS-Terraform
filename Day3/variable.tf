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

