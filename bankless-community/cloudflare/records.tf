# Manage the Bankless.Community DNS zone's normal records

resource "cloudflare_record" "banklessdao_caa_record" {
  for_each = local.caa_records
  zone_id  = resource.cloudflare_zone.banklessdao.id
  name     = "@"
  type     = "CAA"
  ttl      = 3600
  proxied  = false
  data {
    flags = each.value.flags
    tag   = each.value.tag
    value = each.value.value
  }

  depends_on = [
    cloudflare_zone.banklessdao
  ]
}

resource "cloudflare_record" "banklessdao_mx_record" {
  for_each = local.mx_records
  zone_id  = resource.cloudflare_zone.banklessdao.id
  name     = "@"
  type     = "MX"
  value    = each.value.value
  ttl      = each.value.ttl
  priority = each.value.priority
  proxied  = false
  depends_on = [
    cloudflare_zone.banklessdao
  ]
}

resource "cloudflare_record" "banklessdao_txt_record" {
  for_each = local.txt_records
  zone_id  = resource.cloudflare_zone.banklessdao.id
  name     = each.value.name
  type     = "TXT"
  value    = each.value.value
  ttl      = 3600
  proxied  = false
  depends_on = [
    cloudflare_zone.banklessdao
  ]
}

resource "cloudflare_record" "banklessdao_cname_record" {
  for_each = local.cname_records
  zone_id  = resource.cloudflare_zone.banklessdao.id
  name     = each.key
  type     = "CNAME"
  value    = each.value
  ttl      = 3600
  proxied  = false
  depends_on = [
    cloudflare_zone.banklessdao
  ]
}

resource "cloudflare_record" "banklessdao_a_record" {
  for_each = local.a_records
  zone_id  = resource.cloudflare_zone.banklessdao.id
  name     = each.value.name
  type     = "A"
  value    = each.value.value
  ttl      = 1
  proxied  = each.value.proxied
  depends_on = [
    cloudflare_zone.banklessdao
  ]
}

resource "cloudflare_record" "banklessdao_aaa_record" {
  for_each = local.aaa_records
  zone_id  = resource.cloudflare_zone.banklessdao.id
  name     = each.value.name
  type     = "AAAA"
  value    = each.value.value
  ttl      = 1
  proxied  = each.value.proxied
  depends_on = [
    cloudflare_zone.banklessdao
  ]
}
