variable "name" {
  description = "The name of the managed disk"
  default     = "ManagedDisk-02"
}

variable "location" {
  description = "The location of the resource"
  default     = "East US"
}

variable "environment" {
  description = "The environment of the resource"
}

variable "project" {
  description = "The project name"
  default     = "ProjectDemo"
}

variable "resource_type" {
  description = "The type of resource"
  default     = "ManagedDisk"
}

variable "resource_group_name" {
  description = "The name of the resource group"
}

variable "owner" {
  description = "The owner of the resource"
}

variable "billing_code" {
  description = "The billing code for the project"
}

variable "tenant_id" {
  description = "The Azure AD tenant ID"
}
