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


     resource "aws_instance" "app_server" {
         ami = "ami-0015e1184ccba865e"
         instance_type = "t2.micro"
         
         tags = {
            Name = "Terraform_Demo"
         }
     }

