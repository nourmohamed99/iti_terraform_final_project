
module "s3" {

source = "../modules/s3"
s3_name = var.s3name
}

module "dynamodb" {
source = "../modules/dynamodb"
dynamodb_name = var.dynamodb_table_name
}

module "networks" {
  source = "../modules/networks"
  availability_zone_a = var.availability_zone_a
  availability_zone_b = var.availability_zone_b
}

module "ec2" {
source = "../modules/ec2"
ami = var.ami
subnet_id = module.networks.public
security_group_id = module.networks.securitygroup
ec2_name = join("-", [var.ec2name, var.region1])
}
