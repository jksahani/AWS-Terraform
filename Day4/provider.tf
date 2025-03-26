terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.92.0"
    }
  }
  backend "s3" {
    bucket = "terraform-state9102"
    key = "tfstate/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "dev-terraform-db"
  }
}

provider "aws" {
  # Configuration options
}
