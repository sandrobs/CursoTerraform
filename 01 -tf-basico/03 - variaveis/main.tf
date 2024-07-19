provider "aws" {
  region = var.regiao
}

resource "aws_instance" "web" {
  ami           = var.instace_ami
  instance_type = var.instace_type

  tags = var.instace_tags
}