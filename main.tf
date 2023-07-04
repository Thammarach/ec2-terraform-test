terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

provider "aws" {
   region = var.region
}

resource "aws_instance" "myInstance" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "MyInstance"
  }
}