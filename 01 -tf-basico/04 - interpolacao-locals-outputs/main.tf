terraform {
  required_version = "1.8.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.58.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.6.2"
    }

  }

}

provider "aws" {
  region = var.regiao
}


resource "aws_s3_bucket" "manual" {
  bucket = "cucket-teste-import-aws-sbs93"
  tags = {
    Criado = "2024-07-17"
    Importado = "2024-07-17"
    Managedby = "Terraform"
  }
}

