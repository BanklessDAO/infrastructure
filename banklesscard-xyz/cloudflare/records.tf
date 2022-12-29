# Manage the banklesscard.xyz DNS zone's normal records

resource "cloudflare_record" "banklesscard_caa_record" {
  for_each = local.caa_records
  zone_id  = local.cloudflare_zone_id
  name     = "banklesscard.xyz"
  type     = "CAA"
  ttl      = each.value.ttl
  proxied  = false
  # data {
  #   flags = each.value.flags
  #   tag   = each.value.tag
  #   value = each.value.value
  # }
  value = each.value.valueString
}

resource "cloudflare_record" "banklesscard_mx_record" {
  for_each = local.mx_records
  zone_id  = local.cloudflare_zone_id
  name     = local.cloudflare_zone_name
  type     = "MX"
  value    = each.value.value
  ttl      = each.value.ttl
  priority = each.value.priority
  proxied  = false
}

resource "cloudflare_record" "banklesscard_txt_record" {
  for_each = local.txt_records
  zone_id  = local.cloudflare_zone_id
  name     = each.value.name
  type     = "TXT"
  value    = each.value.value
  ttl      = each.value.ttl
  proxied  = each.value.proxied
}

resource "cloudflare_record" "banklesscard_cname_record" {
  for_each = local.cname_records
  zone_id  = local.cloudflare_zone_id
  name     = each.value.name
  type     = "CNAME"
  value    = each.value.value
  ttl      = each.value.ttl
  proxied  = each.value.proxied
}

resource "cloudflare_record" "banklesscard_a_record" {
  for_each = local.a_records
  zone_id  = local.cloudflare_zone_id
  name     = each.value.name
  type     = "A"
  value    = each.value.value
  ttl      = each.value.ttl
  proxied  = each.value.proxied
}

resource "cloudflare_record" "banklesscard_aaa_record" {
  for_each = local.aaa_records
  zone_id  = local.cloudflare_zone_id
  name     = each.value.name
  type     = "AAAA"
  value    = each.value.value
  ttl      = each.value.ttl
  proxied  = each.value.proxied
}
