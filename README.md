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

## pre-commit
This repo uses Yelp's [pre-commit](https://pre-commit.com/) to manage some pre-commit hooks automatically.  
In order to use the hooks, make sure you have `pre-commit`, and `terraform` in your `$PATH`.  
Once in your path you should run `make` in order to configure it. If you push commits that fail pre-commit, your PR will
not pass tests
