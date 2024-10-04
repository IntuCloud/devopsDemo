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

resource "azurerm_log_analytics_workspace" "example" {
  name                = var.log_analytics_workspace_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  tags                = azurerm_resource_group.example.tags
}

resource "azurerm_key_vault" "example" {
  name                = var.key_vault_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  tenant_id           = var.tenant_id
  sku_name            = "standard"
  tags                = azurerm_resource_group.example.tags
}

resource "azurerm_mssql_server" "example" {
  name                         = var.sql_server_name
  resource_group_name          = azurerm_resource_group.example.name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.admin_username
  administrator_login_password = var.admin_password
}

resource "azurerm_mssql_database" "basic" {
  name       = var.basic_db_name
  server_id  = azurerm_mssql_server.example.id
  sku_name   = "Basic"
}
