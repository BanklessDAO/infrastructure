resource "cloudflare_zone" "banklesscard" {
  account_id = resource.cloudflare_account.banklesscard.id
  zone       = local.cloudflare_zone_name
}
