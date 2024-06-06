output "account_id" {
  value = module.iam_user.account_id
}

output "sample_user_name" {
  value = module.iam_user.sample_user_name
}

output "sample_user_access_key_id" {
  value = module.iam_user.sample_user_access_key_id
}

output "sample_user_secret_access_key" {
  value     = module.iam_user.sample_user_secret_access_key
  sensitive = true
}
