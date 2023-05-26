# Provider Requirements
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.0"
    }
  }
}

# AWS Provider 
provider "aws" {
  region = "ap-southeast-2"
}
