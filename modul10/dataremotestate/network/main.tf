terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.5"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-tfstate-tj42"
    storage_account_name = "sttfstatetj42"
    container_name       = "tfstate"
    key                  = "modul10/network.tfstate"
  }
}

provider "azurerm" {
  subscription_id = "7a3c6854-0fe1-42eb-b5b9-800af1e53d70"
  features {
  }
}

resource "azurerm_resource_group" "network" {
  name     = "network-rg-tj42"
  location = "West Europe"
}

resource "azurerm_virtual_network" "main" {
  name                = "main-network-tj42"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.network.location
  resource_group_name = azurerm_resource_group.network.name
}

resource "azurerm_subnet" "main" {
  name                 = "internal"
  resource_group_name  = azurerm_resource_group.network.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.0.1.0/24"]
}

output "subnet_id" {
  value = azurerm_subnet.main.id
}