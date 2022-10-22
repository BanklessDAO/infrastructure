terraform {
  required_providers {
    googleworkspace = {
      source  = "hashicorp/googleworkspace"
      version = "0.7.0"
    }
  }
}

provider "googleworkspace" {
  credentials             = var.gcp_json
  customer_id             = local.client_id
  impersonated_user_email = local.impersonated_user_email
  oauth_scopes = [
    "https://apps-apis.google.com/a/feeds/emailsettings/2.0/",
    "http://sites.google.com/feeds",
    "https://www.googleapis.com/auth/admin.directory.customer",
    "https://www.googleapis.com/auth/admin.directory.customer.readonly",
    "https://www.googleapis.com/auth/admin.directory.domain",
    "https://www.googleapis.com/auth/admin.directory.group",
    "https://www.googleapis.com/auth/admin.directory.group.member",
    "https://www.googleapis.com/auth/admin.directory.orgunit",
    "https://www.googleapis.com/auth/admin.directory.resource.calendar",
    "https://www.googleapis.com/auth/admin.directory.rolemanagement",
    "https://www.googleapis.com/auth/admin.directory.rolemanagement.readonly",
    "https://www.googleapis.com/auth/admin.directory.user",
    "https://www.googleapis.com/auth/admin.directory.userschema",
    "https://www.googleapis.com/auth/apps.groups.migration",
    "https://www.googleapis.com/auth/apps.groups.settings",
    "https://www.googleapis.com/auth/calendar",
    "https://www.googleapis.com/auth/chrome.management.policy",
    "https://www.googleapis.com/auth/cloud-platform",
    "https://www.googleapis.com/auth/contacts",
    "https://www.googleapis.com/auth/drive",
    "https://www.googleapis.com/auth/drive.appdata",
    "https://www.googleapis.com/auth/drive.file",
    "https://www.googleapis.com/auth/gmail.modify",
    "https://www.googleapis.com/auth/gmail.settings.basic",
    "https://www.googleapis.com/auth/gmail.settings.sharing",
    "https://www.googleapis.com/auth/migrate.deployment.interop",
    "https://www.googleapis.com/auth/tasks",
    "https://www.googleapis.com/auth/userinfo.email",
    "https://www.googleapis.com/auth/directory.readonly",
    "https://www.googleapis.com/auth/tasks.readonly"
  ]
}
