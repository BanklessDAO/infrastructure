locals {
  cloudflare_account_name = "Bankless Card"
  cloudflare_zone_name    = "banklesscard.xyz"
  cloudflare_account_id   = "1153f1431cef76098f732e2008867a02"
  cloudflare_zone_id      = "75bcfb0d4f8c61c58b74961c8fada058"
  enable_dnssec           = false

  caa_records = {
    "letsencrypt" = {
      "flags"       = 0,
      "tag"         = "issue",
      "value"       = "letsencrypt.org",
      "valueString" = "0 issue \"letsencrypt.org\"",
      "ttl"         = 1
    },
    "nowild" = {
      "flags"       = 0,
      "tag"         = "issuewild",
      "value"       = ";",
      "valueString" = "0 issuewild \";\"",
      "ttl"         = 1
    }
  }

  mx_records = {
    "google_mx_1" = {
      "value"    = "aspmx.l.google.com.",
      "priority" = "1",
      "ttl"      = 3600
    },
    "google_mx_2" = {
      "value"    = "alt1.aspmx.l.google.com.",
      "priority" = "5",
      "ttl"      = 3600
    },
    "google_mx_3" = {
      "value"    = "alt2.aspmx.l.google.com.",
      "priority" = "5",
      "ttl"      = 3600
    },
    "google_mx_4" = {
      "value"    = "alt3.aspmx.l.google.com.",
      "priority" = "10",
      "ttl"      = 3600
    },
    "google_mx_5" = {
      "value"    = "alt4.aspmx.l.google.com.",
      "priority" = "10",
      "ttl"      = 3600
    },
    "proton_mx_1" = {
      "value"    = "mail.protonmail.ch",
      "priority" = "10",
      "ttl"      = 1
    },
    "proton_mx_2" = {
      "value"    = "mailsec.protonmail.ch",
      "priority" = "20",
      "ttl"      = 1
    }
  }

  txt_records = {
    "google_dkim" = {
      "name"    = "google._domainkey",
      "value"   = "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAn+jBINqHgZTNoqkxEn7S6KfL5rUl9aqGcWFQmDa7cGemvoOwQSHUWuuqs6RYJWi9Vv11AzdkkLkyLEMSeUNcm6nPi4vZ+F5FUs/QNZphs1vaWJIDteswJV4sMmlUYlFDNt//y9LiO4QmUO9HNkAJ/Z6ebRCkpq8AyhqhOhYicxjI5UN2xl/hIyqStgewpeA7Stc+O/1prRNqSkrYLlFAysted83QuAY3u9J4lnltYqEPqFHRTkPEO2cMbtIYn5TYPAlpETnqUKdE2XHLkdIgvPsq4yHd3Wop+aj9cPeSRdE14oUAdfcjR8Yr9QPDzLg9DlShk2y/Z7AhSNj7ulCsCQIDAQAB",
      "ttl"     = 3600,
      "proxied" = false
    },
    "mailjet_dkim" = {
      "name"    = "mailjet._domainkey",
      "value"   = "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC/LWVu+TuOQOQg8vJXnxrnF+HxJ6sK3vyx7lp8GuOQRnH6vJt3R1Mosawr3f2WVqbR2XQa2Cf++YoHbZBecyMGgR1vdAdqdvN8+LL3ojTLaPE5eOJxfmeE+VK6I62eIie6R37PN/deGU6dO8ocUhL1LL5MDrI9RifnnzurEgM0lQIDAQAB",
      "ttl"     = 1,
      "proxied" = false

    },
    "getresponse_dkim" = {
      "name"    = "3ddafdbb._domainkey",
      "value"   = "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCyOIbnL0nUdZ2fqEbdnsxSadJW7ozfEMhKr1c71lRbuuEMbc+4c4pP8Q5nuZTO82Zjm2110GPagGqfpF993K08IWFj/ZHIojIVuIgDuiZiSwwFMmHWMxXvbOdpyE0M4wYEi0o3cf9P3fcjq6PaEUpvnblV/NW8jYtNXHXEClozKwIDAQAB",
      "ttl"     = 1,
      "proxied" = false
    },
    "getresponse_dkim" = {
      "name"    = "3ddafdbb._domainkey",
      "value"   = "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCyOIbnL0nUdZ2fqEbdnsxSadJW7ozfEMhKr1c71lRbuuEMbc+4c4pP8Q5nuZTO82Zjm2110GPagGqfpF993K08IWFj/ZHIojIVuIgDuiZiSwwFMmHWMxXvbOdpyE0M4wYEi0o3cf9P3fcjq6PaEUpvnblV/NW8jYtNXHXEClozKwIDAQAB",
      "ttl"     = 1,
      "proxied" = false
    },
    "github_verification" = {
      "name"    = "_github-challenge-Bankless-Card-org",
      "value"   = "7a152d099e",
      "ttl"     = 1,
      "proxied" = false
    },
    "protonmail" = {
      "name"    = "banklesscard.xyz",
      "value"   = "protonmail-verification=a5e689d22508c3d038bdf144a379eb2045daf2ad",
      "ttl"     = 1,
      "proxied" = false
    },
    "spf_record" = {
      "name"    = "banklesscard.xyz",
      "value"   = "v=spf1 include:spf.mailjet.com include:_spf.google.com include:_spf.protonmail.ch mx -all",
      "ttl"     = 1,
      "proxied" = false
    },
  }

  # Must be unique keys, only the last key will be used.
  # Change to an Object to support more than 1 name (see examples above)
  cname_records = {
    "www" = {
      "name"    = "www",
      "value"   = "bankless-card.github.io",
      "ttl"     = 1,
      "proxied" = true
    },
    "signup" = {
      "name"    = "signup",
      "value"   = "squeeze.gr8.com",
      "ttl"     = 1,
      "proxied" = false
    },
    "vault" = {
      "name"    = "vault",
      "value"   = "bfaf8f01-a020-4251-b61e-e4cef7400cba.cfargotunnel.com",
      "ttl"     = 1,
      "proxied" = true
    },
    "protonmail._domainkey" = {
      "name"    = "protonmail._domainkey",
      "value"   = "protonmail.domainkey.df744uhcrl47dmxxvz73vumc4ov6u3xjhowsvmqo3gf7vgralf3ja.domains.proton.ch",
      "ttl"     = 1,
      "proxied" = false
    },
    "protonmail2._domainkey" = {
      "name"    = "protonmail2._domainkey",
      "value"   = "protonmail.domainkey.df744uhcrl47dmxxvz73vumc4ov6u3xjhowsvmqo3gf7vgralf3ja.domains.proton.ch",
      "ttl"     = 1,
      "proxied" = false
    },
    "protonmail3._domainkey" = {
      "name"    = "protonmail3._domainkey",
      "value"   = "protonmail3.domainkey.df744uhcrl47dmxxvz73vumc4ov6u3xjhowsvmqo3gf7vgralf3ja.domains.proton.ch",
      "ttl"     = 1,
      "proxied" = false
    },
    "hs1-22677003._domainkey" = {
      "name"    = "hs1-22677003._domainkey",
      "value"   = "banklesscard-xyz.hs11a.dkim.hubspotemail.net.",
      "ttl"     = 1,
      "proxied" = false
    },
    "hs2-22677003._domainkey" = {
      "name"    = "hs2-22677003._domainkey",
      "value"   = "banklesscard-xyz.hs11b.dkim.hubspotemail.net.",
      "ttl"     = 1,
      "proxied" = false
    },
  }

  a_records = {
    "banklesscard_3" = {
      "name"    = "banklesscard.xyz",
      "value"   = "185.199.108.153",
      "ttl"     = 1,
      "proxied" = true
    },
    "banklesscard_4" = {
      "name"    = "banklesscard.xyz",
      "value"   = "185.199.109.153",
      "ttl"     = 1,
      "proxied" = true
    },
    "banklesscard_2" = {
      "name"    = "banklesscard.xyz",
      "value"   = "185.199.110.153",
      "ttl"     = 1,
      "proxied" = true
    },
    "banklesscard_1" = {
      "name"    = "banklesscard.xyz",
      "value"   = "185.199.111.153",
      "ttl"     = 1,
      "proxied" = true
    }
  }

  aaa_records = {
    "banklesscard_3" = {
      "name"    = "banklesscard.xyz",
      "value"   = "2606:50c0:8000::153",
      "ttl"     = 1,
      "proxied" = true
    },
    "banklesscard_2" = {
      "name"    = "banklesscard.xyz",
      "value"   = "2606:50c0:8001::153",
      "ttl"     = 1,
      "proxied" = true
    },
    "banklesscard_4" = {
      "name"    = "banklesscard.xyz",
      "value"   = "2606:50c0:8002::153",
      "ttl"     = 1,
      "proxied" = true
    },
    "banklesscard_1" = {
      "name"    = "banklesscard.xyz",
      "value"   = "2606:50c0:8003::153",
      "ttl"     = 1,
      "proxied" = true
    }
  }
}
