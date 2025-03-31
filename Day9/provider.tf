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
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}
