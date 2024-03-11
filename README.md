# iti_terraform_final_project


# Overview

This project is the final assignment for the Terraform course at the Information Technology Institute (ITI) intake 44. It aims to demonstrate the use of Terraform to provision and manage infrastructure on cloud platforms.

# Table of Contents
1. Project Description
2. Project Structure
3. Modules
4. Usage

# Project Description

The ITI Terraform Final Project demonstrates the provisioning of cloud infrastructure using Terraform. The project includes modules for creating EC2 instances, S3 buckets, DynamoDB tables, and managing network configurations such as VPCs, subnets, route tables, and security groups.

# Project Structure

The project structure is organized as follows:
```shell

iti_terraform_final_project/
│
├── main.tf
├── variables.tf
├── outputs.tf
├── modules/
│   ├── ec2/
│   │   ├── ec2.tf
│   │   └── variables.tf
│   ├── s3/
│   │   ├── s3.tf
│   │   └── variables.tf
│   ├── dynamodb/
│   │   ├── dynamodb.tf
│   │   └── variables.tf
│   └── networks/
│       ├── vpc.tf
│       ├── subnets.tf
│       ├── routetable.tf
│       ├── securitygroup.tf
│       ├── igw.tf
│       └── variables.tf
└── README.md
```
# Modules

The project consists of the following modules:

. EC2 Module: Manages EC2 instances.
. S3 Module: Manages S3 buckets.
. DynamoDB Module: Manages DynamoDB tables.
. Networks Module: Manages VPC, subnets, route tables, security groups, and internet gateways.


