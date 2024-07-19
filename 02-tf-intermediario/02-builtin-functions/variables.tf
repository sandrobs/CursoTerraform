variable "environment" {}

variable "regiao" {
  type        = string
  description = ""
  default     = "us-east-1"
}

variable "instace_ami" {
  type        = string
  description = ""
  default     = "ami-04a81a99f5ec58529"

  validation {
    condition = length(var.instace_ami) > 4 && substr(var.instace_ami, 0 , 4) == "ami-"
    error_message = "The instance_ami value must be a valid AMI id, starting with \"ami-\"."
  }

}

variable "instace_type" {
  type        = object({
    dev = string
    prod = string
  })

  description = ""

  default     = {
    dev = "t2.micro"
    prod = "t2.micro"
  }
}

variable "instance_number" {
    type = object({
      dev = number
      prod = number
    })
    description = "Number os instances to create"

    default = {
      dev = 1
      prod = 2
    }

}

variable "instace_tags" {
  type        = map(string)
  description = ""
  default = {
    Name    = "Ubuntu"
    Project = "Curso AWS"
  }
}