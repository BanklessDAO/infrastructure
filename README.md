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

## Prerequisites

* [Terraform](https://www.terraform.io/downloads.html)
* [pre-commit](https://pre-commit.com/)

Make sure you have `pre-commit`, and `terraform` in your `$PATH`.

## Terraform Cloud

All infrastructure changes will automatically plan but require approval from infosec.bankless.community memeber.

## pre-commit
Configure pre-commit hooks before making changes.
If you push commits that fail pre-commit, your PR will not pass tests.

```bash
pre-commit install
```
