# Note that this has to be an existing bucket!
# The doco for this state setup is not clear,
# the note about setting LockID as the partition key
# is a long way down the page!
#  See https://developer.hashicorp.com/terraform/language/settings/backends/s3
terraform {
  backend "s3" {
    bucket         = "ivandean-terraform-best-practices"
    key            = "terraform.tfstate"
    region         = "ap-southeast-2"
    dynamodb_table = "terraform_best_practices_locks" # Must be an existing table, with LockID as the partition key
  }
}
