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
## ⚙️ Module Content

<details><summary>Click to reveal</summary>

### Table of Content

* [Requirements](#requirements)
* [Resources](#resources)
* [Inputs](#inputs)
  * [Required Inputs](#required-inputs)
  * [Optional Inputs](#optional-inputs)
* [Outputs](#outputs)

### Requirements

* [opentofu](https://opentofu.org/docs/):
  `>= 1.8, < 2.0`
* [keycloak](https://search.opentofu.org/provider/keycloak/keycloak/):
  `~>5.6`

### Resources

* [resource.keycloak_custom_identity_provider_mapper.this](https://registry.terraform.io/providers/keycloak/keycloak/latest/docs/resources/custom_identity_provider_mapper)
  >
* [resource.keycloak_oidc_identity_provider.this](https://registry.terraform.io/providers/keycloak/keycloak/latest/docs/resources/oidc_identity_provider)
  >

<!-- markdownlint-capture -->
### Inputs

<!-- markdownlint-disable -->
#### Required Inputs

* [realm_id](#realm_id)
* [alias](#alias)
* [discovery_endpoint](#discovery_endpoint)
* [client_id](#client_id)
* [client_secret_wo](#client_secret_wo)

##### `realm_id`

The ID of the realm in which this identity provider will be created.

<div style="display:inline-block;width:100%;">
<div style="float:left;border-color:#FFFFFF;width:75%;">
<details><summary>Type</summary>

```hcl
string
```

</details>
</div>
</div>

##### `alias`

The alias uniquely identifies an identity provider and it is also used to
build the redirect uri.

<div style="display:inline-block;width:100%;">
<div style="float:left;border-color:#FFFFFF;width:75%;">
<details><summary>Type</summary>

```hcl
string
```

</details>
</div>
</div>

##### `discovery_endpoint`

The OIDC discovery endpoint URL of the identity provider realm. Used to
derive authorization_url and token_url automatically.
Example: https://keycloak.example.com/realms/prod/.well-known/openid-configuration

<div style="display:inline-block;width:100%;">
<div style="float:left;border-color:#FFFFFF;width:75%;">
<details><summary>Type</summary>

```hcl
string
```

</details>
</div>
</div>

##### `client_id`

The client ID of the broker client registered in the identity provider
realm.

<div style="display:inline-block;width:100%;">
<div style="float:left;border-color:#FFFFFF;width:75%;">
<details><summary>Type</summary>

```hcl
string
```

</details>
</div>
</div>

##### `client_secret_wo`

The client secret of the broker client registered in the identity provider
realm. Write-only; accepts ephemeral values.

<div style="display:inline-block;width:100%;">
<div style="float:left;border-color:#FFFFFF;width:75%;">
<details><summary>Type</summary>

```hcl
string
```

</details>
</div>
</div>

#### Optional Inputs

* [display_name](#display_name)
* [enabled](#enabled)
* [client_secret_wo_version](#client_secret_wo_version)
* [sync_mode](#sync_mode)
* [store_token](#store_token)
* [trust_email](#trust_email)
* [link_only](#link_only)
* [hide_on_login_page](#hide_on_login_page)
* [first_broker_login_flow_alias](#first_broker_login_flow_alias)
* [post_broker_login_flow_alias](#post_broker_login_flow_alias)
* [mappers](#mappers)


##### `display_name`

The display name for the realm that is shown when logging in to the admin
console.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  string
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  null
  ```

  </div>
</details>

##### `enabled`

When false, users and clients will not be able to access this identity
provider. Defaults to true.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  bool
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  true
  ```

  </div>
</details>

##### `client_secret_wo_version`

Version counter for client_secret_wo. Increment to trigger secret rotation.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  number
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  1
  ```

  </div>
</details>

##### `sync_mode`

Specifies the sync mode for the identity provider. Options: INHERIT,
LEGACY, FORCE. Defaults to FORCE.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  string
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  FORCE
  ```

  </div>
</details>

##### `store_token`

When true, tokens will be stored after authenticating users. Defaults to
false.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  bool
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  false
  ```

  </div>
</details>

##### `trust_email`

When true, email addresses supplied by this provider will not be verified
even if verification is enabled for the realm. Defaults to false.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  bool
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  false
  ```

  </div>
</details>

##### `link_only`

When true, users cannot log in through this provider. They can only link to
this provider. This is useful when you don't want to allow login from the
provider, but want to integrate with a provider. Defaults to false.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  bool
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  false
  ```

  </div>
</details>

##### `hide_on_login_page`

If true, users cannot log in through this provider. They can only link to
this provider. This is useful when you don't want to allow login from the
provider, but want to integrate with a provider. Defaults to false.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  bool
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  false
  ```

  </div>
</details>

##### `first_broker_login_flow_alias`

The authentication flow Keycloak will use when users log in for the first
time through this identity provider. Defaults to first broker login.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  string
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  null
  ```

  </div>
</details>

##### `post_broker_login_flow_alias`

The authentication flow Keycloak will use when users log in through this
provider after the first time (i.e: already a federated identity linked to
an existing Keycloak user).

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  string
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  null
  ```

  </div>
</details>

##### `mappers`

Map of identity provider mappers to create. Each key is the mapper name.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  map(object({
    identity_provider_mapper = string
    extra_config             = optional(map(string), {})
  }))
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  {}
  ```

  </div>
</details>
<!-- markdownlint-restore -->

### Outputs

* `this`:
  The deployed OIDC identity provider resource
* `mappers`:
  The deployed identity provider mapper resources

</details>

<!-- END TF-DOCS -->
