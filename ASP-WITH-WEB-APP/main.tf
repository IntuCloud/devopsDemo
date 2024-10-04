# Resource Group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    owner        = var.owner
    environment  = var.environment
    project      = var.project
    billing_code = var.billing_code
  }
}

# App Service Plan
resource "azurerm_service_plan" "service_plan" {
  name                = var.service_plan_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku_name            = var.sku_name
  os_type             = var.os_type

  tags = azurerm_resource_group.rg.tags
}

# Web App
resource "azurerm_windows_web_app" "web_app" {
  name                = var.web_app_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_service_plan.service_plan.location
  service_plan_id     = azurerm_service_plan.service_plan.id

  site_config {
    always_on = false # Set always_on to false to comply with the F1 SKU
  }

  tags = azurerm_resource_group.rg.tags
}

