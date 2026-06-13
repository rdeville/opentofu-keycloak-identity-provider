# Configure the Github Provider
terraform {
  required_version = ">= 1.8, < 2.0"
  required_providers {
    keycloak = {
      source  = "keycloak/keycloak"
      version = "~>5.6"
    }
  }
}
