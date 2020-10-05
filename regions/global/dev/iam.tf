#
# Group Developers
#

variable "Developers" {
  description = "account names"
  type        = list(string)
  default     = ["Eugene", "Milo", "Abigail", "Aidan"]
}

resource "aws_iam_user" "Developers" {
  for_each = toset(var.Developers)
  name     = each.value
}

module "aws_iam_user_group_developers" {
  source        = "../../../modules/iam-user-group"
  user_list     = values(aws_iam_user.Developers)[*].name
  group_name    = "Developers"
  allowed_roles = ["arn:aws:iam::${var.aws_account_id}:role/s3-reader"] #  Example of Role to attach
}

#
# Group Ops
#

variable "Ops" {
  description = "account names"
  type        = list(string)
  default     = ["Santiago","Felix","Morgan"]
}

resource "aws_iam_user" "Ops" {
  for_each = toset(var.Ops)
  name     = each.value
}

module "aws_iam_user_group_ops" {
  source        = "../../../modules/iam-user-group"
  user_list     = values(aws_iam_user.Ops)[*].name
  group_name    = "Ops"
  allowed_roles = ["arn:aws:iam::${var.aws_account_id}:role/s3-reader"] # Example of Role to attach
}



