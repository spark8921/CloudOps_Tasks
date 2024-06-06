#Creates an IAM user
resource "aws_iam_user" "sample_user" {
  name = "sample_user"
}

#Defining the IAM policy for the user
resource "aws_iam_policy" "allow_password_change" {
  name = "AllowPasswordChange"
  description = "A policy to allow IAM users for password change"
  policy = jsonencode({
  Version = "2012-10-17",
    Statement=[
      {
        Action = "iam:ChangePassword",
        Effect = "Allow",
        Resource = "*"
      }
    ]
  })
}

#Attaches the policy to the user
resource "aws_iam_user_policy_attachment" "password_change_policy_attachment" {
  user = aws_iam_user.sample_user.name
  policy_arn = aws_iam_policy.allow_password_change.arn
}

#Defining additional policies if needed
resource "aws_iam_policy" "sample_policy" {
  name = "sample_policy"
  description = "A policy for the example user"
  policy = jsonencode({
    Version = "2012-10-17",
    Statement=[
      {
        Action = "s3:*",
        Effect = "Allow",
        Resource = "*"
      },
    ]
  })
}

#Attaches the additional policies to the user
resource "aws_iam_user_policy_attachment" "sample_user_policy_attachment" {
  user=aws_iam_user.sample_user.name
  policy_arn = aws_iam_policy.sample_policy.arn
}

#Optionally, creates access keys for the user
resource "aws_iam_access_key" "sample_user_access_key" {
  user=aws_iam_user.sample_user.name
}

#Retrieve the information about current user
data "aws_caller_identity" "sampleuser_current_caller_identity" {}