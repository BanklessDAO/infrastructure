terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "BanklessDAO"

    workspaces {
      name = "bankless-community-aws"
    }
  }

  required_version = ">= 0.14.0"
}
