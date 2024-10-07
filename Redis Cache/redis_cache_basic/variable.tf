variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location of the resource"
  type        = string
}

variable "environment" {
  description = "The environment"
  type        = string
}

variable "project" {
  description = "The project name"
  type        = string
}

variable "sku" {
  description = "The SKU of the Redis Cache"
  type        = string
}

variable "family" {
  description = "The family of the Redis Cache"
  type        = string
}

variable "capacity" {
  description = "The capacity of the Redis Cache"
  type        = number
}

variable "owner" {
  description = "The owner of the resource"
  type        = string
}

variable "billing_code" {
  description = "The billing code for the project"
  type        = string
}
