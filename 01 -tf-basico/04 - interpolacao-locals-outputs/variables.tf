variable "environment" {
  type        = string
  description = ""
  default     = "dev"
}

variable "regiao" {
  type        = string
  description = ""
  default     = "us-east-1"
}

variable "instace_ami" {
  type        = string
  description = ""
  default     = "ami-04a81a99f5ec58529"
}

variable "instace_type" {
  type        = string
  description = ""
  default     = "t2.micro"
}

variable "instace_tags" {
  type        = map(string)
  description = ""
  default = {
    Name    = "Ubuntu"
    Project = "Curso AWS"
  }
}