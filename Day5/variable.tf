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

variable "subnet" {
  default = {
    subnet1 = "10.2.1.0/24"
    subnet2 = "10.2.2.0/24"
    subnet3 = "10.2.3.0/25"
  }
}

variable "vmsize" {
  default = {
    d2s = "Standard_D2S"
    d4s = "Standard_D4S"
    B2S = "Standard_B2S"
    t2m = "t2.micro"
  }
}


variable "org" {
  default = "hcl"
}

variable "team" {
  default = "tam"
}

variable "project" {
  default = "payment"
}

variable "location" {
  default = "ne"
}


locals {
 service-tag = {
    Org = var.org
    team = var.team
    project = var.project
    location = var.location
    owner = "Jeetendra"
 }
}

locals {
  size = "t2.micro"
}