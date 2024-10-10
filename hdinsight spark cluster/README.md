# Azure HDInsight Spark Cluster

## Overview

This Terraform configuration sets up an Azure HDInsight Spark cluster along with the required resources, including a Resource Group, Storage Account, and Storage Container. The Spark cluster is created using specified versions and includes components such as head, worker, and zookeeper nodes.

## Resources Created

The following resources are created through this Terraform configuration:

### Resource Group
- A container that holds all related resources.
- Tags are applied for better organization, including owner, environment, project, and billing_code.

### Storage Account
- Used for storing data related to the Spark cluster.
- Standard performance tier with locally redundant storage (LRS).
- Tags are inherited from the Resource Group for unified management.

### Storage Container
- A private container within the Storage Account, which will be used by the HDInsight Spark cluster for storage.

### HDInsight Spark Cluster
- A managed Spark cluster running on Azure HDInsight.
- The cluster is based on Spark version 2.3 and created in the Standard pricing tier.
- Includes head, worker, and zookeeper nodes with customizable VM sizes and credentials.

## File Structure

- `main.tf`: Defines all resources including the Resource Group, Storage Account, Storage Container, and HDInsight Spark Cluster.
- `variables.tf`: Holds the variable definitions required by the Terraform configuration.
- `provider.tf`: Configures the Azure provider to allow interaction with Azure resources.
- `terraform.tfvars`: Contains specific values for the variables, such as resource names, credentials, and locations.

