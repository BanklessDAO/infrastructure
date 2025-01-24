terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "Black Flag DAO"

    workspaces {
      name = "bankless-community-cloudflare"
    }
  }

  required_version = ">= 0.14.0"
}
