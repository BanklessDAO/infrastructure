locals {
  cloudflare_account_name = "Black Flag DAO"
  cloudflare_zone_name    = "bankless.community"
  cloudflare_account_id   = "c9429b53ddbb6e2c88cc4a0184f1eba1"
  enable_dnssec           = false

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
    },
    "amazon" = {
      "flags" = 0,
      "tag"   = "issue",
      "value" = "amazon.com"
    }
  }

  mx_records = {
    "mx1" = {
      "value"    = "	route1.mx.cloudflare.net.",
      "priority" = "95",
      "ttl"      = 3600
    },
    "mx2" = {
      "value"    = "	route2.mx.cloudflare.net.",
      "priority" = "45",
      "ttl"      = 3600
    },
    "mx3" = {
      "value"    = "route3.mx.cloudflare.net.",
      "priority" = "79",
      "ttl"      = 3600
    }
  }

  txt_records = {
    "vercel_verify" = {
      "name"  = "_vercel",
      "value" = "vc-domain-verify=academy.bankless.community,682cda25b6ad431ec166"
    },
    "github_verification" = {
      "name"  = "_github-challenge-banklessdao-organization",
      "value" = "1c46b4a034"
    },
    "spf_record" = {
      "name"  = "@",
      "value" = "v=spf1 include:_spf.mx.cloudflare.net mx -all"
    },
    "thrivecoin3" = {
      "name"  = "_acme-challenge.rewards",
      "value" = "minzkovFkor0aT0BMWrWkBlgf8aWLbUg964THAr0ZeI"
    },
    "thrivecoin4" = {
      "name"  = "_cf-custom-hostname.rewards",
      "value" = "72d56ea8-4aa7-4c5a-8891-cc6c8e3ab811"
    },
    "onboarding" = {
      "name"  = "_vercel",
      "value" = "vc-domain-verify=onboarding.bankless.community,aba106f3bd9e0d901f16"
    },
  }

  # Must be unique keys, only the last key will be used.
  # Change to an Object to support more than 1 name (see examples above)
  cname_records = {
    "www"              = "cname.vercel-dns.com.",
    "forum"            = "bankless.hosted-by-discourse.com.",
    "join"             = "cname.vercel-dns.com.",
    "academy"          = "cname.vercel-dns.com.",
    "docs"             = "hosting.gitbook.io.",
    "bountyboard"      = "cname.vercel-dns.com.",
    "test-bountyboard" = "cname.vercel-dns.com.",
    "season2"          = "cname.vercel-dns.com.",
    "season3"          = "cname.vercel-dns.com.",
    "season4"          = "cname.vercel-dns.com.",
    "season5"          = "cname.vercel-dns.com.",
    "rewards"          = "app.thrivecoin.com",
    "onboarding"       = "cname.vercel-dns.com."
  }

  a_records = {
    "apex" = {
      "name"    = "@",
      "value"   = "76.76.21.21",
      "proxied" = false
    },
    "infosec1" = {
      "name"    = "infosec",
      "value"   = "185.199.108.153",
      "proxied" = false
    },
    "infosec2" = {
      "name"    = "infosec",
      "value"   = "185.199.109.153",
      "proxied" = false
    },
    "infosec3" = {
      "name"    = "infosec",
      "value"   = "185.199.110.153",
      "proxied" = false
    },
    "infosec4" = {
      "name"    = "infosec",
      "value"   = "185.199.111.153",
      "proxied" = false
    },
    "madhatter1" = {
      "name"    = "madhatter",
      "value"   = "185.199.108.153",
      "proxied" = false
    },
    "madhatter2" = {
      "name"    = "madhatter",
      "value"   = "185.199.109.153",
      "proxied" = false
    },
    "madhatter3" = {
      "name"    = "madhatter",
      "value"   = "185.199.110.153",
      "proxied" = false
    },
    "madhatter4" = {
      "name"    = "madhatter",
      "value"   = "185.199.111.153",
      "proxied" = false
    }
  }

  aaa_records = {
    "infosec1" = {
      "name"    = "infosec",
      "value"   = "2606:50c0:8000::153",
      "proxied" = false
    },
    "infosec2" = {
      "name"    = "infosec",
      "value"   = "2606:50c0:8001::153",
      "proxied" = false
    },
    "infosec3" = {
      "name"    = "infosec",
      "value"   = "2606:50c0:8002::153",
      "proxied" = false
    },
    "infosec4" = {
      "name"    = "infosec",
      "value"   = "2606:50c0:8003::153",
      "proxied" = false
    },
    "madhatter1" = {
      "name"    = "madhatter",
      "value"   = "2606:50c0:8000::153",
      "proxied" = false
    },
    "madhatter2" = {
      "name"    = "madhatter",
      "value"   = "2606:50c0:8001::153",
      "proxied" = false
    },
    "madhatter3" = {
      "name"    = "madhatter",
      "value"   = "2606:50c0:8002::153",
      "proxied" = false
    },
    "madhatter4" = {
      "name"    = "madhatter",
      "value"   = "2606:50c0:8003::153",
      "proxied" = false
    }
  }
}
