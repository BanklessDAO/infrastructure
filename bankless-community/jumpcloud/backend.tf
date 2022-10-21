terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "BanklessDAO"

    workspaces {
      name = "bankless-community-jumpcloud"
    }
  }

  required_version = ">= 0.14.0"
}
