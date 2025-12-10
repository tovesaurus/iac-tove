terraform {
  required_providers {
    
    azurerm = {
        source = "hashicorp/azurerm"
        version = "4.1.0"
    }
  }
backend "azurerm" {
    resource_group_name  = "rg-terraform-state-tj42"
    storage_account_name = "statetj42"
    container_name       = "tfstate"
    key                  = "modul10/project-b.tfstate"
  }
}

provider "azurerm" {
    subscription_id = "7a3c6854-0fe1-42eb-b5b9-800af1e53d70"
    features {}
}

resource "azurerm_resource_group" "rg_b" {
    name = var.resource_group_name
    location = var.location
}
