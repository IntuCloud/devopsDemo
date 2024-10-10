resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
  tags = {
    owner        = var.owner
    environment  = var.environment
    project      = var.project
    billing_code = var.billing_code
  }
}

resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags                     = azurerm_resource_group.example.tags
}

resource "azurerm_storage_container" "example" {
  name                  = var.storage_container_name
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"
}

resource "azurerm_hdinsight_kafka_cluster" "example" {
  name                = var.kafka_cluster_name
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  cluster_version     = "4.0"
  tier                = "Standard"
  tags                     = azurerm_resource_group.example.tags

  component_version {
    kafka = "2.1"
  }

  gateway {
    username = var.gateway_username
    password = var.gateway_password
  }

  storage_account {
    storage_container_id = azurerm_storage_container.example.id
    storage_account_key  = azurerm_storage_account.example.primary_access_key
    is_default           = true
  }

  roles {
    head_node {
      vm_size  = var.head_node_vm_size
      username = var.head_node_username
      password = var.head_node_password
    }

    worker_node {
      vm_size                  = var.worker_node_vm_size
      username                 = var.worker_node_username
      password                 = var.worker_node_password
      number_of_disks_per_node = 1
      target_instance_count    = 2
    }

    zookeeper_node {
      vm_size  = var.zookeeper_node_vm_size
      username = var.zookeeper_username
      password = var.zookeeper_password
    }
  }
}