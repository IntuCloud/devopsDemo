# Resource Group
resource "azurerm_resource_group" "function_rg" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    owner        = var.owner
    environment  = var.environment
    project      = var.project
    billing_code = var.billing_code
  }
}

# Storage Account
resource "azurerm_storage_account" "function_storage" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.function_rg.name
  location                 = azurerm_resource_group.function_rg.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication

  tags = azurerm_resource_group.function_rg.tags
}

# App Service Plan
resource "azurerm_app_service_plan" "function_service_plan" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.function_rg.location
  resource_group_name = azurerm_resource_group.function_rg.name

  sku {
    tier = var.app_service_tier
    size = var.app_service_size
  }

  tags = azurerm_resource_group.function_rg.tags
}

# Function App
resource "azurerm_function_app" "function_app" {
  name                       = var.function_app_name
  location                   = azurerm_resource_group.function_rg.location
  resource_group_name        = azurerm_resource_group.function_rg.name
  app_service_plan_id        = azurerm_app_service_plan.function_service_plan.id
  storage_account_name       = azurerm_storage_account.function_storage.name
  storage_account_access_key = azurerm_storage_account.function_storage.primary_access_key

  tags = azurerm_resource_group.function_rg.tags
}
