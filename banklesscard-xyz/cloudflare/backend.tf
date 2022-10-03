terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "BanklessDAO"

    workspaces {
      name = "banklesscard-xyz-cloudflare"
    }
  }

  required_version = ">= 0.14.0"
}
