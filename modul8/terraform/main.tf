# Random suffix for unique naming
# resource "random_string" "suffix" {
#   length  = 6
#   special = false
#   upper   = false
# }

# Resource Group
resource "azurerm_resource_group" "main" {
  name     = local.resource_group_name
  location = var.location

  tags = {
    Environment = var.environment
    ManagedBy   = "Terraform"
    Project     = var.project_name
  }
}

# Storage Account
resource "azurerm_storage_account" "main" {
  name                = local.storage_account_name
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location

  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  min_tls_version = "TLS1_2"

  tags = {
    Environment = var.environment
    ManagedBy   = "Terraform"
    Owner       = "Tove Jonassen"
    Dato        = "2025-12-02"
  }
}
