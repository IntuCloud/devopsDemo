# Azure HDInsight Kafka Cluster

## Overview

This Terraform configuration sets up an Azure HDInsight Kafka cluster along with the required resources, such as a Resource Group, Storage Account, and Storage Container. The Kafka cluster is created using specified versions, with components such as head, worker, and zookeeper nodes.

## Resources Created

The following resources are created through this Terraform configuration:

1. **Resource Group**:
   - A container that holds all related resources.
   - Tags are applied for better organization, including `owner`, `environment`, `project`, and `billing_code`.

2. **Storage Account**:
   - Used for storing data related to the Kafka cluster.
   - Standard performance tier with locally redundant storage (LRS).
   - Tags are inherited from the Resource Group for unified management.

3. **Storage Container**:
   - A private container within the Storage Account, which will be used by the HDInsight Kafka cluster for storage.

4. **HDInsight Kafka Cluster**:
   - A managed Kafka cluster running on Azure HDInsight.
   - The cluster is based on Kafka version `2.1` and created in the `Standard` pricing tier.
   - Includes head, worker, and zookeeper nodes with customizable VM sizes and credentials.


## File Structure

- `main.tf`: Defines all resources including the Resource Group, Storage Account, Storage Container, and HDInsight Kafka Cluster.
- `variables.tf`: Holds the variable definitions required by the Terraform configuration.
- `provider.tf`: Configures the Azure provider to allow interaction with Azure resources.
- `terraform.tfvars`: Contains specific values for the variables, such as resource names, credentials, and locations.

