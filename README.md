<!-- markdownlint-disable -->

# 👋 Welcome to OpenTofu Module Keycloak Identity Provider

<center>

> ⚠️ IMPORTANT !
>
> Main repo is on [framagit.org](https://framagit.org/rdeville-public/opentofu/keycloak-identity-provider).
>
> On other online git platforms, they are just mirror of the main repo.
>
> Any issues, pull/merge requests, etc., might not be considered on those other
> platforms.

</center>

---

<center>

[![Licenses: (MIT OR BEERWARE)][license_badge]][license_url]
[![Changelog][changelog_badge]][changelog_badge_url]
[![Release][release_badge]][release_badge_url]

</center>

[release_badge]: https://framagit.org/rdeville-public/opentofu/keycloak-identity-provider/-/badges/release.svg
[release_badge_url]: https://framagit.org/rdeville-public/opentofu/keycloak-identity-provider/-/releases/
[license_badge]: https://img.shields.io/badge/Licenses-MIT%20OR%20BEERWARE-blue
[license_url]: https://framagit.org/rdeville-public/opentofu/keycloak-identity-provider/blob/main/LICENSE
[changelog_badge]: https://img.shields.io/badge/Changelog-Python%20Semantic%20Release-yellow
[changelog_badge_url]: https://github.com/python-semantic-release/python-semantic-release

OpenTofu module allowing to manage Keycloak identity provider configuration.

---

## 🚀 Usage

### Configure an OIDC Identity Provider with required variables only

```hcl
module "identity_provider" {
  source = "git::https://framagit.org/rdeville-public/opentofu/keycloak-identity-provider.git"

  # Required variables
  realm_id           = keycloak_realm.master.id
  alias              = "prod"
  client_id          = "keycloak-broker"
  client_secret      = var.broker_secret
  discovery_endpoint = "https://keycloak.example.com/realms/prod/.well-known/openid-configuration"
}
```

### Configure an OIDC Identity Provider with attribute mappers

```hcl
module "identity_provider" {
  source = "git::https://framagit.org/rdeville-public/opentofu/keycloak-identity-provider.git"

  # Required variables
  realm_id           = keycloak_realm.master.id
  alias              = "prod"
  display_name       = "Production"
  client_id          = "keycloak-broker"
  client_secret      = var.broker_secret
  discovery_endpoint = "https://keycloak.example.com/realms/prod/.well-known/openid-configuration"
  sync_mode          = "FORCE"

  mappers = {
    groups = {
      identity_provider_mapper = "oidc-user-attribute-idp-mapper"
      extra_config = {
        attribute      = "groups"
        user_attribute = "groups"
        syncMode       = "INHERIT"
      }
    }
  }
}
```

<!-- BEGIN TF-DOCS -->

<!-- END TF-DOCS -->
