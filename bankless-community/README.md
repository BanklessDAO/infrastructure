# BanklessDAO Infrastructure

Terraform Infrastructure for BanklessDAO (bankless.community) Managed by infosec.bankless.community

## Providers

We're currently using this following structure

    .
    ├── jumpcloud          # Used for SSO on @bankless.community members (depreciated?)
    ├── aws                # Used to host the domain registration
    └── cloudflare         # Used for DNS
