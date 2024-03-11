
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
}

module "ec2" {
source = "../modules/ec2"
ami = var.ami
subnet_id = module.networks.public
ec2_name = join("-", [var.ec2name, var.region2])
}
