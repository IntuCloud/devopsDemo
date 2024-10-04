variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}

variable "resource_group_name" {
  type = string
  description = "Name for the Azure Resource Group"
}

variable "location" {
  type = string
  description = "Location for the Azure resources"
}

variable "storage_account_name" {
  type = string
  description = "Name for the Azure Storage Account"
}

variable "storage_account_tier" {
  type = string
  description = "Storage tier for the Azure Storage Account (e.g., Standard, Premium)"
}

variable "storage_account_replication" {
  type = string
  description = "Storage account replication type (e.g., LRS, GRS)"
}

variable "app_service_plan_name" {
  type = string
  description = "Name for the Azure App Service Plan"
}

variable "app_service_tier" {
  type = string
  description = "Tier for the App Service Plan (e.g., Free, Basic)"
}

variable "app_service_size" {
  type = string
  description = "Size for the App Service Plan (e.g., B1, S1)"
}

variable "function_app_name" {
  type = string
  description = "Name for the Azure Function App"
}

variable "owner" {
  type = string
  description = "Owner of the Azure resources"
}

variable "environment" {
  type = string
  description = "Environment where the resources are deployed (e.g., dev, prod)"
}

variable "project" {
  type = string
  description = "Project associated with the Azure resources"
}

variable "billing_code" {
  type = string
  description = "Billing code for the Azure resources"
}