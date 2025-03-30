

variable "instanceid" {
  default = "ami-05f08ad7b78afd8cd"
}

variable "instancesize" {
  default = "t2.micro"
}

variable "availability_zone" {
  default = "us-east-1a"
}

variable "storagename" {
  default = "terraforms3321313"
}

variable "vpc_ip" {
  default = "10.2.0.0/16"
}

variable "subnet_ip" {
  default = "10.2.1.0/24"
}

variable "private_ips" {
  default = ["10.2.1.6"]

}

variable "storagename2" {
  
}


