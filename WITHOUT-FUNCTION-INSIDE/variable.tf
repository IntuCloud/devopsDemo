variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
}

variable "location" {
  type        = string
  description = "The location for the resources."
}

variable "storage_account_name" {
  type        = string
  description = "The name of the storage account."
}

variable "storage_account_tier" {
  type        = string
  description = "The storage account performance tier."
}

variable "storage_account_replication" {
  type        = string
  description = "The replication type for the storage account."
}

variable "app_service_plan_name" {
  type        = string
  description = "The name of the app service plan."
}

variable "app_service_tier" {
  type        = string
  description = "The app service plan pricing tier."
}

variable "app_service_size" {
  type        = string
  description = "The app service plan instance size."
}

variable "function_app_name" {
  type        = string
  description = "The name of the function app."
}

# Tag variables
variable "owner" {
  type        = string
  description = "The owner of the resources."
}

variable "environment" {
  type        = string
  description = "The environment for the resources."
}

variable "project" {
  type        = string
  description = "The project associated with the resources."
}

variable "billing_code" {
  type        = string
  description = "The billing code for the resources."
}
