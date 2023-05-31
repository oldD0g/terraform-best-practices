terraform {
backend "s3" {
  bucket         = "ivandean-terraform-best-practices"
  key            = "terraform.tfstate"
  region         = "ap-southeast-2"
}
}
