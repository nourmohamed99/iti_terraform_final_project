# Configure the provider software version
terraform {
  backend "s3" {
  bucket = "nour-terraform-project"
  key    = "state1"
  region = "us-east-1"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
}
