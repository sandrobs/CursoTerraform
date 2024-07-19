locals {

  common_tags = {
    Environment = "Dev"
    Managedby   = "Terraform"
  }

  instance_number = lookup(var.instance_number, var.environment)

  file_ext = "zip"

  object_name = "meu-arquivo-gerado-de-um-template"

}