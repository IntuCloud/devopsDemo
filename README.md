# Overview
### Task 1: SQL Elastic Pool Infrastructure Setup
Describes the task, which involves setting up various Azure resources using Terraform.

## Resources Created

- **Resource Group**: A container for your Azure resources.
- **Log Analytics Workspace**: A workspace for monitoring logs.
- **Key Vault**: A vault for storing secrets.
- **SQL Server**: The database server that will host the elastic pool.
- **SQL Elastic Pool**: A pool for databases, created without any databases.

## Key Files

- **main.tf**: Contains the code for creating resources.
- **variable.tf**: Defines the variables used in the configuration.
- **provider.tf**: Sets up the connection to Azure.
- **terraform.tfvars**: Holds the specific values for the variables (e.g., resource names, credentials).
