output "security_group_id" {
  value = aws_security_group.this.id

  description = <<-END
		The Security Group ID

		The Security Group ID as described [HERE](https://go.s3d.club/tf/aws/security-group-id)
		END
}
