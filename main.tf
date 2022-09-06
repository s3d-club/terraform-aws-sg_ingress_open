module "change" {
  source = "git::https://github.com/s3d-club/terraform-external-data-changes?ref=0.0.7"

  path = path.module
  tags = var.tags
}

resource "aws_security_group" "this" {
  description = "Open inbound traffic"
  name_prefix = "${var.name_prefix}-open-"
  tags        = module.change.tags
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
