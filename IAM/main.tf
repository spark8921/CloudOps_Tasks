module "iam_user" {
 source = "./modules/iam_user"
 aws_region = var.aws_region
 iam_user_name = var.iam_user_name
}