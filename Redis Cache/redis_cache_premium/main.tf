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

resource "azurerm_redis_cache" "example" {
  name                = "${var.project}-${var.environment}-redis"
  location            = var.location
  resource_group_name = azurerm_resource_group.example.name
  capacity            = var.capacity
  family              = var.family
  sku_name            = var.sku

  tags = {
    owner        = var.owner
    environment  = var.environment
    project      = var.project
    billing_code = var.billing_code
  }
}

