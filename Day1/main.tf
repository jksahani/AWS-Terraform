terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.92.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

/*
resource "aws_s3_bucket" "storage" {
  bucket = "terraforms3321313"
}
*/


resource "aws_vpc" "vpc" {
  cidr_block = "10.1.1.0/24"
}


