provider "azurerm" {
  features {}
  skip_provider_registration = true
}

resource "azurerm_resource_group" "rg" {
  name     = "1-c4b664c5-playground-sandbox"
  location = "East US"
}

resource "azurerm_container_registry" "acr" {
  name                = var.container_registry_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = var.container_registry_sku
  admin_enabled       = var.admin_enabled
}

data "azurerm_client_config" "current" {}

output "client_id" {
  value = data.azurerm_client_config.current.client_id
}

output "client_secret" {
  value = azurerm_container_registry.acr.admin_password
  sensitive = true
}
output "acr_login_server" {
  value = azurerm_container_registry.acr.login_server
}