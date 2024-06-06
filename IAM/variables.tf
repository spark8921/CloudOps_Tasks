variable "aws_region" {
  description = "AWS region for creating resources"
  type = string
}

variable "iam_user_name" {
  description = "Name of the IAM user"
  type = string
  default = "sample_user"
}