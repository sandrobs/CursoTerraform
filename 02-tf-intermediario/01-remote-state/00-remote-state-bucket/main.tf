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


data "aws_caller_identity" "current" {
  
}

resource "aws_s3_bucket" "remote-state" {
  bucket = "tfstate-${data.aws_caller_identity.current.account_id}"

  tags = {
    Description = "Stores terraform remote state files"
    Managedby = "Terraform"
  }
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.remote-state.id
  versioning_configuration {
    status = "Enabled"
  }
}

output "remote_state_bucket" {
  value = aws_s3_bucket.remote-state.bucket
}

output "remote_state_bucket_arn" {
  value = aws_s3_bucket.remote-state.arn
}