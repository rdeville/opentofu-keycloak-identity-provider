variable "realm_id" {
  type        = string
  description = <<-EOM
  The ID of the realm in which this identity provider will be created.
  EOM
}

variable "alias" {
  type        = string
  description = <<-EOM
  The alias uniquely identifies an identity provider and it is also used to
  build the redirect uri.
  EOM
}

variable "display_name" {
  type        = string
  description = <<-EOM
  The display name for the realm that is shown when logging in to the admin
  console.
  EOM

  default = null
}

variable "enabled" {
  type        = bool
  description = <<-EOM
  When false, users and clients will not be able to access this identity
  provider. Defaults to true.
  EOM

  default = true
}

variable "discovery_endpoint" {
  type        = string
  description = <<-EOM
  The OIDC discovery endpoint URL of the identity provider realm. Used to
  derive authorization_url and token_url automatically.
  Example: https://keycloak.example.com/realms/prod/.well-known/openid-configuration
  EOM
}

variable "client_id" {
  type        = string
  description = <<-EOM
  The client ID of the broker client registered in the identity provider
  realm.
  EOM
}

variable "client_secret_wo" {
  type        = string
  sensitive   = true
  ephemeral   = true
  description = <<-EOM
  The client secret of the broker client registered in the identity provider
  realm. Write-only; accepts ephemeral values.
  EOM
}

variable "client_secret_wo_version" {
  type        = number
  description = <<-EOM
  Version counter for client_secret_wo. Increment to trigger secret rotation.
  EOM

  default = 1
}

variable "sync_mode" {
  type        = string
  description = <<-EOM
  Specifies the sync mode for the identity provider. Options: INHERIT,
  LEGACY, FORCE. Defaults to FORCE.
  EOM

  default = "FORCE"
}

variable "store_token" {
  type        = bool
  description = <<-EOM
  When true, tokens will be stored after authenticating users. Defaults to
  false.
  EOM

  default = false
}

variable "trust_email" {
  type        = bool
  description = <<-EOM
  When true, email addresses supplied by this provider will not be verified
  even if verification is enabled for the realm. Defaults to false.
  EOM

  default = false
}

variable "link_only" {
  type        = bool
  description = <<-EOM
  When true, users cannot log in through this provider. They can only link to
  this provider. This is useful when you don't want to allow login from the
  provider, but want to integrate with a provider. Defaults to false.
  EOM

  default = false
}

variable "hide_on_login_page" {
  type        = bool
  description = <<-EOM
  If true, users cannot log in through this provider. They can only link to
  this provider. This is useful when you don't want to allow login from the
  provider, but want to integrate with a provider. Defaults to false.
  EOM

  default = false
}

variable "first_broker_login_flow_alias" {
  type        = string
  description = <<-EOM
  The authentication flow Keycloak will use when users log in for the first
  time through this identity provider. Defaults to first broker login.
  EOM

  default = null
}

variable "post_broker_login_flow_alias" {
  type        = string
  description = <<-EOM
  The authentication flow Keycloak will use when users log in through this
  provider after the first time (i.e: already a federated identity linked to
  an existing Keycloak user).
  EOM

  default = null
}

variable "mappers" {
  type = map(object({
    identity_provider_mapper = string
    extra_config             = optional(map(string), {})
  }))
  description = <<-EOM
  Map of identity provider mappers to create. Each key is the mapper name.
  EOM

  default = {}
}
