variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}

# Resource Group Variables
variable "resource_group_name" {
  type        = string
  description = "Name of the Azure resource group"

}

variable "location" {
  type        = string
  description = "Location for the resources"
  default     = "West Europe"
}

# App Service Plan Variables
variable "service_plan_name" {
  type        = string
  description = "Name of the Azure App Service Plan"
  
}

variable "sku_name" {
  type        = string
  description = "SKU name for the Service Plan"
  
}

variable "os_type" {
  type        = string
  description = "Operating system type for the Service Plan"
  default     = "Windows"
}

# Web App Variables
variable "web_app_name" {
  type        = string
  description = "Name of the Azure Windows Web App"
  
}

# Tags
variable "owner" {
  type        = string
  description = "Owner of the resources"

}

variable "environment" {
  type        = string
  description = "Environment (e.g., Dev, Prod)"

}

variable "project" {
  type        = string
  description = "Project name"

}

variable "billing_code" {
  type        = string
  description = "Billing code for the resources"

}
