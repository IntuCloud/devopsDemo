variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location of the resources"
  type        = string
  default     = "Central US"
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

variable "sql_server_name" {
  description = "The name of the SQL Server."
  default     = "example-sqlserver"
}

variable "admin_username" {
  description = "The administrator username for the SQL Server."
  default     = "adminuser"
}

variable "admin_password" {
  description = "The administrator password for the SQL Server."
  default     = "P@ssw0rd1234"
}

variable "basic_db_name" {
  description = "The name of the Basic SQL Database."
  default     = "example-sqldb-basic"
}


variable "tenant_id" {
  description = "The Tenant ID for Azure"
  type        = string
}
