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


resource "azurerm_managed_disk" "disk" {
  depends_on          = [azurerm_resource_group.example]
  name                = lower(replace("${var.location}${var.environment}${var.project}${var.resource_type}02", " ", ""))
  location            = var.location
  resource_group_name = var.resource_group_name
  storage_account_type = "Standard_LRS"
  disk_size_gb        = 100
  create_option       = "Empty"

  tags = {
    owner        = var.owner
    environment  = var.environment
    project      = var.project
    billing_code = var.billing_code
  }
}

