locals {
  cloudflare_account_name = "BanklessDAO"
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
      "value"    = "aspmx.l.google.com.",
      "priority" = "1",
      "ttl"      = 3600
    },
    "mx2" = {
      "value"    = "alt1.aspmx.l.google.com.",
      "priority" = "5",
      "ttl"      = 3600
    },
    "mx3" = {
      "value"    = "alt2.aspmx.l.google.com.",
      "priority" = "5",
      "ttl"      = 3600
    },
    "mx4" = {
      "value"    = "alt3.aspmx.l.google.com.",
      "priority" = "10",
      "ttl"      = 3600
    },
    "mx5" = {
      "value"    = "alt4.aspmx.l.google.com.",
      "priority" = "10",
      "ttl"      = 3600
    }
  }

  txt_records = {
    "google_dkim" = {
      "name"  = "google._domainkey",
      "value" = "v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC31Rh5G/ZQmKjHHHck3ghiBj3J3BP3S9Fboll68HcoZEs+ow2ZSAIGig63CqkPgfUSvd+vQ4HU3rCSiMcx6QNsRYefR725oeZWS8kdDfo7MteafFVy0Jn6+Ih4FumHsMoTsLiA+8KwLfSeubvhkMmaqC7d5wphtd9suB9lzf1TEQIDAQAB"
    },
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
      "value" = "v=spf1 include:_spf.google.com mx -all"
    }
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
    "season5"          = "cname.vercel-dns.com."
  }

  a_records = {
    "apex" = {
      "name"  = "@",
      "value" = "76.76.21.21",
      "proxied" = false
    },
    "infosec1" = {
      "name"  = "infosec",
      "value" = "185.199.108.153",
      "proxied" = false
    },
    "infosec2" = {
      "name"  = "infosec",
      "value" = "185.199.109.153",
      "proxied" = false
    },
    "infosec3" = {
      "name"  = "infosec",
      "value" = "185.199.110.153",
      "proxied" = false
    },
    "infosec4" = {
      "name"  = "infosec",
      "value" = "185.199.111.153",
      "proxied" = false
    },
    "madhatter1" = {
      "name"  = "madhatter",
      "value" = "185.199.108.153",
      "proxied" = false
    },
    "madhatter2" = {
      "name"  = "madhatter",
      "value" = "185.199.109.153",
      "proxied" = false
    },
    "madhatter3" = {
      "name"  = "madhatter",
      "value" = "185.199.110.153",
      "proxied" = false
    },
    "madhatter4" = {
      "name"  = "madhatter",
      "value" = "185.199.111.153",
      "proxied" = false
    }
  }

  aaa_records = {
    "infosec1" = {
      "name"  = "infosec",
      "value" = "2606:50c0:8000::153",
      "proxied" = false
    },
    "infosec2" = {
      "name"  = "infosec",
      "value" = "2606:50c0:8001::153",
      "proxied" = false
    },
    "infosec3" = {
      "name"  = "infosec",
      "value" = "2606:50c0:8002::153",
      "proxied" = false
    },
    "infosec4" = {
      "name"  = "infosec",
      "value" = "2606:50c0:8003::153",
      "proxied" = false
    },
    "madhatter1" = {
      "name"  = "madhatter",
      "value" = "2606:50c0:8000::153",
      "proxied" = false
    },
    "madhatter2" = {
      "name"  = "madhatter",
      "value" = "2606:50c0:8001::153",
      "proxied" = false
    },
    "madhatter3" = {
      "name"  = "madhatter",
      "value" = "2606:50c0:8002::153",
      "proxied" = false
    },
    "madhatter4" = {
      "name"  = "madhatter",
      "value" = "2606:50c0:8003::153",
      "proxied" = false
    }
  }
}
