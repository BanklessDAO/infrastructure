# Infrastructure

Terraform Infrastructure Managed by InfoSec.bankless.community

## Project Structure

We're currently using Root First structure, meaning each folder contains a complete environment

    .
    ├── bankless-community              # Infrastructure for BanklessDAO (bankless.community)
    ├──── aws                           # Contains Root Registration for Banksless.community
    ├──── cloudflare                    # Contains DNS Records for Banksless.community
    ├──── googleworkspace               # TODO: replace JumpCloud with Google Workspace
    ├──── jumpcloud                     # Contains User SSO Permissions
    ├── banklesscard-xyz                # Infrastructure for BanklessCard (banklesscard.xyz)
    ├──── cloudflare                    # Contains DNS Records for BanklessCard.xyz
    └── README.md

## Terraform Cloud

All infrastructure changes will automatically plan but require approval from infosec.bankless.community memeber.
