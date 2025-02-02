terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

 resource "aws_instance" "app_server" {
   ami                    = "ami-0866a3c8686eaeeba"
   instance_type          = "t2.micro"
   user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y #DuyTran
              EOF

  tags = {
    Name = var.instance_name
  }
}

 resource "aws_instance" "web_server" {
  ami           = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name2
  }
}
 resource "aws_instance" "db_server" {
  ami           = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name3
  }
} 
