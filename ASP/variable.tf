variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}




variable "location" {
  description = "Location of the Azure resources"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "app_service_plan_name" {
  description = "Name of the App Service Plan"
  type        = string
}

# Tags
variable "owner" {
  description = "Owner of the resources"
  type        = string
}

variable "environment" {
  description = "Environment (e.g., dev, prod)"
  type        = string
}

variable "project" {
  description = "Project name"
  type        = string
}

variable "billing_code" {
  description = "Billing code for the project"
  type        = string
}
