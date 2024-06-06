#Output the IAM account number
output "account_id" {
  value = data.aws_caller_identity.sampleuser_current_caller_identity.account_id
}

#Output the IAM user name
output "sample_user_name" {
  value = aws_iam_user.sample_user.name
}

#Output the access key
output "sample_user_access_key_id" {
  value = aws_iam_access_key.sample_user_access_key.id
}

#Output the secret key
output "sample_user_secret_access_key" {
  value = aws_iam_access_key.sample_user_access_key.secret
  sensitive = true
}

# #Output the IAM user password
# output "sample_user_password" {
#   value = random_password.sample_user_password.result
#   sensitive = true
# }

