variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location of the resources"
  type        = string
  default     = "West US"
}

variable "owner" {
  description = "The owner of the resource group"
  type        = string
}

variable "environment" {
  description = "The environment of the resource group"
  type        = string
}

variable "project" {
  description = "The project associated with the resource group"
  type        = string
}

variable "billing_code" {
  description = "The billing code for the resource group"
  type        = string
}

variable "log_analytics_workspace_name" {
  description = "The name of the Log Analytics Workspace"
  type        = string
}

variable "key_vault_name" {
  description = "The name of the Key Vault"
  type        = string
}

variable "pbiworkspace_name" {
  description = "The name of the Power BI"
  type        = string
}

variable "workspace_collection_name" {
  type        = string
  description = "Name of the Workspace Collection"
}

variable "tenant_id" {
  description = "The tenant ID for the Key Vault"
  type        = string
}

variable "subscription_id" {
  description = "The subscription id"
  type        = string
}
