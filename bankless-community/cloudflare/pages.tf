resource "cloudflare_pages_project" "deployment_configs" {
  account_id        = local.cloudflare_account_id
  name              = lower(local.cloudflare_account_name)
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
        NEXT_PUBLIC_ALCHEMY_API_KEY          = var.alchemy_api_key
        NEXT_PUBLIC_BLOCKNATIVE_API_KEY      = var.blocknative_api_key
        NEXT_PUBLIC_INFURA_PROJECT_ID        = var.infura_project_id
        NEXT_PUBLIC_WALLETCONNECT_PROJECT_ID = var.walletconnect_project_id
      }
      always_use_latest_compatibility_date = true
    }
    production {
      environment_variables = {
        ENVIRONMENT = "production"
      }
      secrets = {
        NEXT_PUBLIC_ALCHEMY_API_KEY          = var.alchemy_api_key
        NEXT_PUBLIC_BLOCKNATIVE_API_KEY      = var.blocknative_api_key
        NEXT_PUBLIC_INFURA_PROJECT_ID        = var.infura_project_id
        NEXT_PUBLIC_WALLETCONNECT_PROJECT_ID = var.walletconnect_project_id
      }
      always_use_latest_compatibility_date = false
    }
  }
}
