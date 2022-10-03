terraform {
  required_providers {
    jumpcloud = {
      source = "sagewave/jumpcloud"
    }
  }
}

provider "jumpcloud" {
  api_key = var.jumpcloud_api_key
  org_id  = var.jumpcloud_org_id
}
