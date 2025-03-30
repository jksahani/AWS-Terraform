Terraform - plan/validate/apply/destroy
Terraform - provider
Terraform - state commands 
terraform - import
terraform - variable
terraform - target
Terraform - local
Terraform - Module
Terraform - backend


Terraform Data

VPC --
VPC - 10.2.0.0/16

data "aws_vpc" "vpc1" {
  id = var.vpc_id
}


resource "aws_subnet" "subnet1" {
    vpc_id = data.aws_vpc.vpc1.id
}



----------------Module Strucure---------------

----------DEV -------
provider.tf (Provider and Backend details)
main.tf (all tf config for all resources)
variable.tf (all variables)
State file into backend -- S3

----------UAT -----

provider.tf (Provider and Backend details)
main.tf (all tf config for all resources)
variable.tf (all variables)
State file into backend -- S3

-----------Prod -----

provider.tf (Provider and Backend details)
main.tf (all tf config for all resources) --10
variable.tf (all variables)
State file into backend -- S3


--------Common--------
Module
VPC -
EC2 --EC2 -- 200Lines
EKS


--------------------------------------------------------------------------------
------------Terraform Workspace 

Dev/UAT/Prod ----------

provider.tf (Provider and Backend details)
main.tf (all tf config for all resources)
variable.tf (all variables) --- need to change all the variables
State file into backend -- S3 --- Same state 
vars_dev.tfvars -- Dev
vars_uat.tfvars  --- UAT
vars_prod.tfvars --- prod 

terraform apply –var-file=vars_dev.tfvars

terraform apply –var-file=vars_uat.tfvars

terraform apply –var-file=vars_prod.tfvars

variable.tfste file for multiples environments 