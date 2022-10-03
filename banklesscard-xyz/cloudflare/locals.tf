locals {
  zone_name     = "banklesscard.xyz"
  zone_id       = "75bcfb0d4f8c61c58b74961c8fada058"
  enable_dnssec = false

  caa_records = {
    "letsencrypt" = {
      "flags" = 0,
      "tag"   = "issue",
      "value" = "letsencrypt.org"
    },
    "nowild" = {
      "flags" = 0,
      "tag"   = "issuewild",
      "value" = ";"
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
      "ttl"      = 3600
    },
    "proton_mx_2" = {
      "value"    = "mailsec.protonmail.ch",
      "priority" = "20",
      "ttl"      = 3600
    }
  }

  txt_records = {
    "google_dkim" = {
      "name"  = "google._domainkey",
      "value" = "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAn+jBINqHgZTNoqkxEn7S6KfL5rUl9aqGcWFQmDa7cGemvoOwQSHUWuuqs6RYJWi9Vv11AzdkkLkyLEMSeUNcm6nPi4vZ+F5FUs/QNZphs1vaWJIDteswJV4sMmlUYlFDNt//y9LiO4QmUO9HNkAJ/Z6ebRCkpq8AyhqhOhYicxjI5UN2xl/hIyqStgewpeA7Stc+O/1prRNqSkrYLlFAysted83QuAY3u9J4lnltYqEPqFHRTkPEO2cMbtIYn5TYPAlpETnqUKdE2XHLkdIgvPsq4yHd3Wop+aj9cPeSRdE14oUAdfcjR8Yr9QPDzLg9DlShk2y/Z7AhSNj7ulCsCQIDAQAB"
    },
    "mailjet_dkim" = {
      "name"  = "mailjet._domainkey",
      "value" = "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC/LWVu+TuOQOQg8vJXnxrnF+HxJ6sK3vyx7lp8GuOQRnH6vJt3R1Mosawr3f2WVqbR2XQa2Cf++YoHbZBecyMGgR1vdAdqdvN8+LL3ojTLaPE5eOJxfmeE+VK6I62eIie6R37PN/deGU6dO8ocUhL1LL5MDrI9RifnnzurEgM0lQIDAQAB"
    },
    "github_verification" = {
      "name"  = "_github-challenge-Bankless-Card-org",
      "value" = "7a152d099e"
    },
    "protonmail" = {
      "name"  = "@",
      "value" = "protonmail-verification=a5e689d22508c3d038bdf144a379eb2045daf2ad"
    },
    "spf_record" = {
      "name"  = "@",
      "value" = "v=spf1 include:spf.mailjet.com include:_spf.google.com include:_spf.protonmail.ch mx -all"
    },
  }

  # Must be unique keys, only the last key will be used.
  # Change to an Object to support more than 1 name (see examples above)
  cname_records = {
    "www"                     = "bankless-card.github.io",
    "vault"                   = "bfaf8f01-a020-4251-b61e-e4cef7400cba.cfargotunnel.com",
    "protonmail._domainkey"   = "protonmail.domainkey.df744uhcrl47dmxxvz73vumc4ov6u3xjhowsvmqo3gf7vgralf3ja.domains.proton.ch",
    "protonmail2._domainkey"  = "protonmail.domainkey.df744uhcrl47dmxxvz73vumc4ov6u3xjhowsvmqo3gf7vgralf3ja.domains.proton.ch",
    "protonmail3._domainkey"  = "protonmail3.domainkey.df744uhcrl47dmxxvz73vumc4ov6u3xjhowsvmqo3gf7vgralf3ja.domains.proton.ch",
    "hs1-22677003._domainkey" = "banklesscard-xyz.hs11a.dkim.hubspotemail.net.",
    "hs2-22677003._domainkey" = "banklesscard-xyz.hs11b.dkim.hubspotemail.net."
  }

  a_records = {
    "banklesscard_1" = {
      "name"  = "@",
      "value" = "185.199.108.153"
    },
    "banklesscard_2" = {
      "name"  = "@",
      "value" = "185.199.109.153"
    },
    "banklesscard_3" = {
      "name"  = "@",
      "value" = "185.199.110.153"
    },
    "banklesscard_4" = {
      "name"  = "@",
      "value" = "185.199.111.153"
    }
  }

  aaa_records = {
    "banklesscard_1" = {
      "name"  = "@",
      "value" = "2606:50c0:8000::153"
    },
    "banklesscard_2" = {
      "name"  = "@",
      "value" = "2606:50c0:8001::153"
    },
    "banklesscard_3" = {
      "name"  = "@",
      "value" = "2606:50c0:8002::153"
    },
    "banklesscard_4" = {
      "name"  = "@",
      "value" = "2606:50c0:8003::153"
    }
  }
}
