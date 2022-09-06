variable "name_prefix" {
  type = string

  description = <<-END
		Name Prefix

		This value will be added as a name prefix for any resouces created by this
		module as described [HERE](https://go.s3d.club/tf/name-prefix)
		END
}

variable "cidr" {
  type = list(string)

  description = <<-END
	  IP4 CIDR

		See note [HERE](https://go.s3d.club/tf/name-prefix).
		END
}

variable "cidr6" {
  type = list(string)

  description = <<-END
	  IP6 CIDR

		See note [HERE](https://go.s3d.club/tf/name-prefix).
		END
}

variable "tags" {
  type = map(string)

  description = <<-END
    Tags for resources

    All resources will include thise tag values.

		Tags in the **output** of this module will include all these **input** tags
		merged with the the [part_name](https://go.s3d.club/tf/part_name) and version
		of this module.

		An overview of our approach to tagging is
		[HERE](https://go.s3d.club/tf/tagging).
		END
}

variable "vpc" {
  type = string

  description = <<-END
	  VPC ID

		See note [HERE](https://go.s3d.club/tf/aws/vpc).
		END
}
