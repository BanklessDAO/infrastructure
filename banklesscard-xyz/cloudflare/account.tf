resource "cloudflare_account" "banklesscard" {
  name              = local.cloudflare_account_name
  type              = "standard"
  enforce_twofactor = true
}
