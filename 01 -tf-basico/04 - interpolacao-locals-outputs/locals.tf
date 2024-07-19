locals {

  common_tags = {
    Name        = "my-super-bucket-sbs1993"
    Environment = "Dev"
    Managedby   = "Terraform"
  }

  ip_filepath = "ips.json"

}