 provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

resource "azurerm_resource_group" "demorg" {
  name     = var.resource_group_name
  location = var.location
  tags = {
    owner       = var.owner
    environment = var.environment
    project     = var.project
    billing_code = var.billing_code
  }
}

resource "azurerm_log_analytics_workspace" "demolaw" {
  name                = var.log_analytics_workspace_name
  location            = azurerm_resource_group.demorg.location
  resource_group_name = azurerm_resource_group.demorg.name
  tags = azurerm_resource_group.demorg.tags

  sku = "PerNode"
}

resource "azurerm_key_vault" "demokv" {
  name                = var.key_vault_name
  location            = azurerm_resource_group.demorg.location
  resource_group_name = azurerm_resource_group.demorg.name
  tags = azurerm_resource_group.demorg.tags
  tenant_id           = var.tenant_id
  sku_name            = "standard"
}

resource "azurerm_powerbi_embedded" "example" {
  name               = var.pbiworkspace_name
  location            = azurerm_resource_group.demorg.location
  resource_group_name = azurerm_resource_group.demorg.name
  tags = azurerm_resource_group.demorg.tags

  sku_name            = "A1"
  administrators      = ["fida@intu.cloud"]
}