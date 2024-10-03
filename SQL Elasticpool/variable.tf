variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The location where the resources will be created."
  type        = string
}

variable "log_analytics_workspace_name" {
  description = "The name of the Log Analytics Workspace."
  type        = string
}

variable "key_vault_name" {
  description = "The name of the Key Vault."
  type        = string
}

variable "sql_admin_login" {
  description = "The SQL administrator login."
  type        = string
}

variable "sql_admin_password" {
  description = "The SQL administrator password."
  type        = string
}

variable "azuread_object_id" {
  description = "The Object ID of the Azure AD Administrator."
  type        = string
}

variable "azurerm_mssql_elasticpool_name" {
  description = "The name of the Elasticpool."
  type        = string
}

variable "azurerm_mssql_server_name" {
  description = "The name of the SQL Server."
  type        = string
}

variable "azurerm_database_resource_group" {
  description = "The name of the resource group for database."
  type        = string
}

variable "login_username" {
  description = "The login username for the azuread_administrator."
  type        = string
}

# Tags Variables
variable "owner" {
  description = "The owner of the resources."
  type        = string
}

variable "environment" {
  description = "The environment for the resources (e.g., dev, staging, production)."
  type        = string
}

variable "project" {
  description = "The project associated with the resources."
  type        = string
}

variable "billing_code" {
  description = "The billing code for the resources."
  type        = string
}
