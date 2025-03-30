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

data "aws_vpc" "selected" {
  id = "vpc-07b3985177694f152"
  //Address range - 172.31.0.0/16

}

resource "aws_subnet" "subnet1" {
  vpc_id = data.aws_vpc.selected.id
  cidr_block = "172.31.151.0/24"
}

resource "aws_subnet" "subnet2" {
  vpc_id = data.aws_vpc.selected.id
  cidr_block = "172.31.155.0/24"
}


data "aws_s3_bucket" "s3" {
  bucket = "terraform-state9102"
}

/*
resource "aws_s3_bucket_object" "folder1" {
    bucket = data.aws_s3_bucket.s3.id
    key    = "demo/directory/"
}
*/