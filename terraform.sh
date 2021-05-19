#!/bin/bash

#Provisioning the EKS Cluster using Terraform
cd terraform

#Run Terraform Init
terraform init

#Run Terraform Plan
terraform plan

#Run Terraform Apply with autoapprove
terraform apply -auto-approve