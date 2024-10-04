# SQL Elastic Pool Infrastructure Setup with Azure Resources

## Task Overview
This task is to setup of Azure resources, including an SQL Elastic Pool, Resource Group, Log Analytics Workspace, Key Vault, and SQL Server. The Elastic Pool is provisioned without databases, with tags used for easier management.

## Resources Created

### Resource Group:
    Manages all resources with tags for owner, environment, project, and billing.

### Log Analytics Workspace: 
    Collects logs with a 30-day retention period.

### Key Vault: 
    Stores secrets, keys, and certificates with tenant-based access policies.

### SQL Server: 
    Hosts the Elastic Pool with Azure AD integration and admin credentials.

### SQL Elastic Pool: 
    Scalable "Basic" tier Elastic Pool, created without databases.

## File Structure

### main.tf: 
    Defines the resources.

### variable.tf:
    Holds variable definitions.

### provider.tf: 
    Sets up the Azure provider.

### terraform.tfvars: 
    Contains specific variable values.

### README.md:
    Task Overview.