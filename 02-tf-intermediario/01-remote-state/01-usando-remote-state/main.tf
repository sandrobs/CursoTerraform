terraform {
  required_version = "1.8.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.58.0"
    }

  }

  backend "s3" {
  }

}

provider "aws" {
  region = var.regiao
}

resource "aws_instance" "web" {
  ami           = var.instace_ami
  instance_type = var.instace_type

  tags = var.instace_tags
}