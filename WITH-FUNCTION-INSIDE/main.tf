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
  name                     = lower(var.storage_account_name)  # Ensure storage account name is lowercase
  resource_group_name      = azurerm_resource_group.function_rg.name
  location                 = azurerm_resource_group.function_rg.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication

  # Inherit common tags from resource group
  tags = merge(azurerm_resource_group.function_rg.tags, {
    storage_type = "Hot"  # Optional specific tag
  })
}

# App Service Plan
resource "azurerm_app_service_plan" "function_service_plan" {
  name                 = var.app_service_plan_name
  location             = azurerm_resource_group.function_rg.location
  resource_group_name  = azurerm_resource_group.function_rg.name
  kind                 = "FunctionApp"  # Specify the kind of service plan

  sku {
    tier = var.app_service_tier
    size = var.app_service_size
  }

  # Inherit common tags from resource group
  tags = azurerm_resource_group.function_rg.tags
}

# Linux Function App
resource "azurerm_linux_function_app" "example" {
  name                    = "example-linux-function-app"
  resource_group_name     = azurerm_resource_group.function_rg.name
  location                = azurerm_resource_group.function_rg.location
  service_plan_id         = azurerm_app_service_plan.function_service_plan.id
  storage_account_name    = azurerm_storage_account.function_storage.name
  storage_account_access_key = azurerm_storage_account.function_storage.primary_access_key

  # Minimal site_config block (required)
  site_config {
    # You can add more configurations here if necessary
  }

  # App settings for runtime and version
  app_settings = {
    FUNCTIONS_WORKER_RUNTIME = "python"
    PYTHON_VERSION           = "~3.8"
  }

  # Inherit common tags from resource group
  tags = azurerm_resource_group.function_rg.tags
}

# Function App Function
resource "azurerm_function_app_function" "example" {
  name                   = "example-function-app-function"
  function_app_id        = azurerm_linux_function_app.example.id
  language               = "Python"
  test_data              = jsonencode({ "name": "Azure" })
  config_json            = jsonencode({
    "bindings": [
      {
        "authLevel": "function",
        "direction": "in",
        "methods":   ["get", "post"],
        "name":     "req",
        "type":     "httpTrigger"
      },
      {
        "direction": "out",
        "name":      "$return",
        "type":      "http"
      }
    ]
  })
}
