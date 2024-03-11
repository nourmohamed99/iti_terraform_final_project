# iti_terraform_final_project


# Overview

This project is the final assignment for the Terraform course at the Information Technology Institute (ITI) intake 44. It aims to demonstrate the use of Terraform to provision and manage infrastructure on cloud platforms.

# Table of Contents
1. Project Description
2. Project Structure
3. Modules
4. Usage
5. output

# Project Description

The ITI Terraform Final Project demonstrates the provisioning of cloud infrastructure using Terraform. The project includes modules for creating EC2 instances, S3 buckets, DynamoDB tables, and managing network configurations such as VPCs, subnets, route tables, and security groups.

# Project Structure

The project structure is organized as follows:

This structure separates your Terraform code into modules, each handling a specific aspect of your infrastructure.

```shell

── project
├── modules
│   ├── dynamodb
│   │   ├── dynamodb.tf
│   │   └── variables.tf
│   ├── ec2
│   │   ├── ec2.tf
│   │   └── variables.tf
│   ├── networks
│   │   ├── igw.tf
│   │   ├── routetable.tf
│   │   ├── securitygroup.tf
│   │   ├── subnets.tf
│   │   ├── variables.tf
│   │   └── vpc.tf
│   └── s3
│       ├── s3.tf
│       └── variables.tf
├── project1
│   ├── main.tf
│   ├── provider.tf
│   ├── terraform.tfvars
│   └── variables.tf
└── project2
    ├── main.tf
    ├── provider.tf
    ├── terraform.tfvars
    └── variables.tf
```
# Modules

The project consists of the following modules:

1. Networks Module: Manages VPC, subnets, route tables, security groups, and internet gateways.
   
2. EC2 Module: Manages EC2 instances.

3. S3 Module: Manages S3 buckets.

4. DynamoDB Module: Manages DynamoDB tables.

# Usage

To use the project, follow these steps:

1. Clone the repository:
   
```shell
git clone https://github.com/nourmohamed99/iti_terraform_final_project.git
```
2. Navigate to the project directory:
   
```shell
cd iti_terraform_final_project/poject/project1 
```   

3. Initialize Terraform:
   
```shell
terraform init
```

4. Adjust variables in terraform.tfvars and variables.tf as needed.

5. plan the infrastructure:
   
```shell
terraform plan
```

6. Deploy the infrastructure:

```shell
terraform apply
```
7. Repeat the same steps for project2
```shell
cd iti_terraform_final_project/poject/project2 
```     
```shell
terraform init
```
```shell
terraform plan
```   
```shell
terraform apply
```
# output

