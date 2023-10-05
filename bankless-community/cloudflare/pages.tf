resource "cloudflare_pages_project" "deployment_configs" {
  account_id        = local.cloudflare_account_id
  name              = local.cloudflare_account_name
  production_branch = "main"

  source {
    type = "github"
    config {
      owner                         = local.cloudflare_account_name
      repo_name                     = "bankless-website"
      production_branch             = "main"
      pr_comments_enabled           = true
      deployments_enabled           = true
      production_deployment_enabled = true
      preview_deployment_setting    = "all"
    }
  }

  build_config {
    build_command   = "npx next build"
    destination_dir = "out"
    root_dir        = ""
  }

  deployment_configs {
    preview {
      environment_variables = {
        ENVIRONMENT = "preview"
      }
      secrets = {
        NEXT_PUBLIC_ALCHEMY_API_KEY          = "xoSmxF5VP5yJq0zV-MedaxZUCYSt7DUN"
        NEXT_PUBLIC_BLOCKNATIVE_API_KEY      = "9176eee3-12fa-431c-93c5-27d1f40d4c91"
        NEXT_PUBLIC_INFURA_PROJECT_ID        = "9344a875cace468ca6c8029147cda56a"
        NEXT_PUBLIC_WALLETCONNECT_PROJECT_ID = "e1726502f108ccc7845fc598e1a605f3"
      }
      always_use_latest_compatibility_date = true
    }
    production {
      environment_variables = {
        ENVIRONMENT = "production"
      }
      secrets = {
        NEXT_PUBLIC_ALCHEMY_API_KEY          = "xoSmxF5VP5yJq0zV-MedaxZUCYSt7DUN"
        NEXT_PUBLIC_BLOCKNATIVE_API_KEY      = "9176eee3-12fa-431c-93c5-27d1f40d4c91"
        NEXT_PUBLIC_INFURA_PROJECT_ID        = "9344a875cace468ca6c8029147cda56a"
        NEXT_PUBLIC_WALLETCONNECT_PROJECT_ID = "e1726502f108ccc7845fc598e1a605f3"
      }
      always_use_latest_compatibility_date = true
    }
  }
}
