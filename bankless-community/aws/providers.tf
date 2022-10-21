terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.32.0"
    }
  }
}

provider "aws" {
  region  = local.aws_region
  profile = local.aws_profile
  # Only these AWS Account IDs may be operated on by this template
  allowed_account_ids = local.account_ids
  access_key          = var.aws_access_key
  secret_key          = var.aws_secret_key
}

