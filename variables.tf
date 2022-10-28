variable "cidr6s" {
  type = list(string)

  description = <<-EOT
    A list of IP6 cidrs.
    EOT
}

variable "cidrs" {
  type = list(string)

  description = <<-EOT
    A list of cidrs.
    EOT
}

variable "name_prefix" {
  type = string

  description = <<-EOT
    A prefix value for the security group name.
    EOT
}

variable "tags" {
  type = map(string)

  description = <<-EOT
    The `tags` for resources.
    EOT
}

variable "vpc_id" {
  type = string

  description = <<-EOT
    A VPC ID.
    EOT
}
