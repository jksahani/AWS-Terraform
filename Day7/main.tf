module "s3_bucket2" {
  source = "./Module/S3"
  bucket = var.storagename
}

module "vpc" {
  source = "./Module/VPC"
  vpc = var.vpc_ip
  subnet = var.subnet_ip
  privateip = var.private_ips
}

module "ec2" {
  source = "./Module/EC2"
  instanceid = var.instanceid
  instancesize = var.instancesize
  network_interface_id = module.vpc.network_interface_id
}


