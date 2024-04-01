# iti_terraform_final_project


# Overview

This project is the final assignment for the Terraform course at the Information Technology Institute (ITI) intake 44. It aims to demonstrate the use of Terraform to provision and manage infrastructure on cloud platforms.

# Table of Contents
1. Project Description
2. Project Structure
3. Modules
4. Usage
5. output
6. Cleanup 

# Project Description

The ITI Terraform Final Project demonstrates the provisioning of cloud infrastructure using Terraform. The project includes modules for creating EC2 instance, S3 bucket, DynamoDB table, and managing network configurations such as VPC, subnets, route tables, security group, and internet gateway.

# Project Structure

The project structure is organized as follows:

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

This structure separates your Terraform code into modules, each handling a specific aspect of your infrastructure.

The project consists of the following modules:

1. Networks Module: Manages VPC, subnets, route tables, security group, and internet gateway.
   
2. EC2 Module: Manages EC2 instance.

3. S3 Module: Manages S3 bucket.

4. DynamoDB Module: Manages DynamoDB table.

# Usage

To use the project, follow these steps:

1. Clone the repository:
   
```shell
git clone https://github.com/nourmohamed99/iti_terraform_final_project.git
```
2. Navigate to the project directory:
   
```shell
cd iti_terraform_final_project/project1 
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
This command will prompt you to confirm the creation of the resources. Enter yes to proceed with creation.

7. Repeat the same steps in project2
```shell
cd iti_terraform_final_project/project2 
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
# Output

In the first deployment (project1), the Terraform project successfully provisioned the following resources in the specified region:

1. EC2 instance
2. S3 bucket
3. DynamoDB table
4. Networking components (VPC, subnets, route tables, security group, internet gateway)

All resources were deployed in the region specified in the provider.tf file, ensuring consistency and centralized management of the infrastructure."

However, in the second deployment (project2), the Terraform project successfully provisioned the same resources but in a different region.

# Cleanup

1. Destroy Infrastructure: Run the following command to destroy all the resources provisioned by Terraform:

```shell
terraform destroy
```
This command will prompt you to confirm the destruction of the resources. Enter yes to proceed with the deletion.

2. Verify Deletion: After the terraform destroy command completes, verify that all resources have been successfully deleted by checking the AWS Management Console or using the AWS CLI.

3. Optional: If there are any resources that were not deleted or if you encounter any issues during cleanup, you may need to manually delete them using the appropriate AWS management tools.

By following these steps, you can ensure that all resources provisioned by this Terraform project are properly cleaned up, avoiding any unnecessary costs or resources left running in your AWS account.   


