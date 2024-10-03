data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
  tags = {
    owner        = var.owner
    environment  = var.environment
    project      = var.project
    billing_code = var.billing_code
  }
}

resource "azurerm_log_analytics_workspace" "law" {
  name                = var.log_analytics_workspace_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  retention_in_days   = 30

  # Propagating the tags from resource group
  tags = azurerm_resource_group.example.tags
}

resource "azurerm_key_vault" "key_vault" {
  name                        = var.key_vault_name
  location                    = azurerm_resource_group.example.location
  resource_group_name         = azurerm_resource_group.example.name
  enabled_for_disk_encryption = true
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  sku_name                   = "standard"

  # Propagating the tags from resource group
  tags = azurerm_resource_group.example.tags

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "Get",
      "List",
      "Create",
      "Delete",
    ]

    secret_permissions = [
      "Get",
      "List",
      "Set",
      "Delete",
    ]

    storage_permissions = [
      "Get",
      "List",
    ]
  }
}

resource "azurerm_resource_group" "database_rg" {
  name     = var.azurerm_database_resource_group
  location = var.location

  # Propagating the tags from resource group
  tags = azurerm_resource_group.example.tags
}

resource "azurerm_mssql_server" "server" {
  name                         = var.azurerm_mssql_server_name
  resource_group_name          = azurerm_resource_group.database_rg.name
  location                     = azurerm_resource_group.database_rg.location
  version                      = "12.0"
  administrator_login          = var.sql_admin_login
  administrator_login_password  = var.sql_admin_password
  minimum_tls_version          = "1.2"

  azuread_administrator {
    login_username = var.login_username
    object_id      = var.azuread_object_id
  }

# Propagating the tags from resource group
  tags = azurerm_resource_group.example.tags
}

resource "azurerm_mssql_elasticpool" "example" {
  name                = var.azurerm_mssql_elasticpool_name
  resource_group_name          = azurerm_resource_group.database_rg.name
  location                     = azurerm_resource_group.database_rg.location
  server_name         = azurerm_mssql_server.server.name
  license_type        = "LicenseIncluded"
  max_size_gb         = 4.8828125

  sku {
    name     = "BasicPool"
    tier     = "Basic"
    capacity = 50
  }

  depends_on = [azurerm_mssql_server.server]

  per_database_settings {
    min_capacity = 0
    max_capacity = 5
  }

  # Propagating the tags from resource group
  tags = azurerm_resource_group.example.tags
}