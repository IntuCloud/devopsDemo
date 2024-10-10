variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "The location of the resources"
  type        = string
  default     = "West Europe"
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

variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
}

variable "storage_container_name" {
  description = "Name of the storage container"
  type        = string
}

variable "spark_cluster_name" {
  description = "Name of the HDInsight Hadoop cluster"
  type        = string
}

variable "gateway_username" {
  description = "Gateway username"
  type        = string
}

variable "gateway_password" {
  description = "Gateway password"
  type        = string
}

variable "head_node_vm_size" {
  description = "VM size for head node"
  type        = string
}

variable "head_node_username" {
  description = "Username for head node"
  type        = string
}

variable "head_node_password" {
  description = "Password for head node"
  type        = string
}

variable "worker_node_vm_size" {
  description = "VM size for worker node"
  type        = string
}

variable "worker_node_username" {
  description = "Username for worker node"
  type        = string
}

variable "worker_node_password" {
  description = "Password for worker node"
  type        = string
}

variable "zookeeper_node_vm_size" {
  description = "VM size for Zookeeper node"
  type        = string
}

variable "zookeeper_username" {
  description = "Username for Zookeeper node"
  type        = string
}

variable "zookeeper_password" {
  description = "Password for Zookeeper node"
  type        = string
}
