locals {
  base_url          = replace(var.discovery_endpoint, "/.well-known/openid-configuration", "")
  authorization_url = "${local.base_url}/protocol/openid-connect/auth"
  token_url         = "${local.base_url}/protocol/openid-connect/token"
}

resource "keycloak_oidc_identity_provider" "this" {
  realm                    = var.realm_id
  alias                    = var.alias
  display_name             = var.display_name
  enabled                  = var.enabled
  authorization_url        = local.authorization_url
  token_url                = local.token_url
  client_id                = var.client_id
  client_secret_wo         = var.client_secret_wo
  client_secret_wo_version = var.client_secret_wo_version
  sync_mode                = var.sync_mode
  store_token              = var.store_token
  trust_email              = var.trust_email
  link_only                = var.link_only
  hide_on_login_page       = var.hide_on_login_page

  first_broker_login_flow_alias = var.first_broker_login_flow_alias
  post_broker_login_flow_alias  = var.post_broker_login_flow_alias
}

resource "keycloak_custom_identity_provider_mapper" "this" {
  for_each = var.mappers

  realm                    = var.realm_id
  identity_provider_alias  = keycloak_oidc_identity_provider.this.alias
  name                     = each.key
  identity_provider_mapper = each.value.identity_provider_mapper
  extra_config             = each.value.extra_config
}
