## Download Terraform and AWS Cli**

1.Download Terraform Setup.

2.Copy it in a Separate directory.
3. Download AWS CLI
https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
https://awscli.amazonaws.com/AWSCLIV2.msi

## Login AWS CLI **
4. Authenticate AWS ClI

access key -
Secret access key --

run this on CMD/Powershell   - aws configure

provide the access key and secret 

## Initialize Terraform**

5. Run Terraform Init

6. add provider details into the config file

https://www.terraform.io/
https://registry.terraform.io/browse/providers

add provider in main.tf

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.92.0"
    }
  }
}

add s3 config in main .tf

resource "aws_s3_bucket" "storage" {
  bucket = "terraforms3321313"
}
add vpc code in main.tf

resource "aws_vpc" "vpc" {
  cidr_block = "10.1.1.0/24"
}

init/apply/plan/destroy

to check the state config we can run the below command
.\terraform.exe state list

Terraform Target 

\terraform.exe destroy -target 'aws_s3_bucket.storage'
