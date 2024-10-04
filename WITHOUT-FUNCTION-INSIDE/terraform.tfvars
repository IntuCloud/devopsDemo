subscription_id = "Enter your Subscription id"
resource_group_name   = "rg-weu-skdfunctionapp-dev-asp"
location              = "West Europe"
storage_account_name  = "functionsapptestsaskd"
app_service_plan_name = "function-app-service-plan"
function_app_name     = "test-function-app-skd"

# For Basic plan
app_service_tier = "Basic"
app_service_size = "B1"  # Choose size like B1, B2, B3


# Storage Account
storage_account_tier      = "Standard"  # Specify the tier here
storage_account_replication = "LRS"      # Specify the replication type here

# Tag values
owner        = "SREEKRISHNADASAN"
environment  = "Development"
project      = "SKD-FUNCTIONAPP-WITHOUTFUNCTION"
billing_code = "B0003"
