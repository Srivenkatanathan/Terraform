terraform { 
   required_providers {
       aws = {
         source = "hashicorp/aws"
         version = ">= 5.81.0"
       }
     }
     
     required_version = ">= 1.0.0"    #required_version is nothing but version of cli
     
 }    
     provider "aws" {

        region = "ap-south-1"

     }


     resource "aws_instances" "app_server" {
         ami = "ami-830c94e3"
         instance_type = "t2.micro"
         
         tags = {
            Name = "Terraform_Demo"
         }
     }

