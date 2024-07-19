resource "aws_instance" "server" {

  count = local.instance_number <= 0 ? 0 : local.instance_number

  ami = var.instace_ami
  instance_type = lookup(var.instace_type, var.environment)

    tags = merge(
        local.common_tags,
        {
            Project = "Curso AWS com Terraform"
            Env = format("%s", var.environment)
            Name = format("Instance %d", count.index + 1)
        }
    )


}