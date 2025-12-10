terraform {
  required_providers {

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.1.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-tfstate-tj42"
    storage_account_name = "sttfstatetj42"
    container_name       = "tfstate"
    use_azuread_auth     = true
    key                  = "modul10/project-a.tfstate"
  }
}

provider "azurerm" {
  subscription_id = "7a3c6854-0fe1-42eb-b5b9-800af1e53d70"
  features {}
}

resource "azurerm_resource_group" "rg_a" {
  name     = var.resource_group_name
  location = var.location
}