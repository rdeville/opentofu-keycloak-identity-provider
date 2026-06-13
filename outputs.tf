output "this" {
  value       = keycloak_oidc_identity_provider.this
  description = "The deployed OIDC identity provider resource"
  sensitive   = true
}

output "mappers" {
  value       = keycloak_custom_identity_provider_mapper.this
  description = "The deployed identity provider mapper resources"
}
