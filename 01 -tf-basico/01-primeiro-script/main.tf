provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-e9345344-a3b9-4b58-859f-11d8144c8965"

  tags = {
    Name        = "my-tf-test-bucket-e9345344-a3b9-4b58-859f-11d8144c8965"
    Environment = "Dev"
    Managedby   = "Terraform"
  }
}