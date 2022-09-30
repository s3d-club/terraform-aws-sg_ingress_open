module "name" {
  source = "git::https://github.com/s3d-club/terraform-external-data-name-tags?ref=v0.1.0"

  path         = path.module
  name_prefix  = var.name_prefix
  name_segment = "igress-open"
  tags         = var.tags
}

resource "aws_security_group" "this" {
  description = "Open inbound traffic"
  name_prefix = module.name.name_prefix
  tags        = module.name.tags
  vpc_id      = var.vpc

  ingress {
    cidr_blocks      = var.cidr
    description      = "Open Access"
    from_port        = 0
    ipv6_cidr_blocks = var.cidr6
    protocol         = "-1"
    to_port          = 0
  }
}
