terraform {
backend "azurerm" {}
    required_providers {
      azurerm = {
        source = "hashicorp/azurerm"
        version = "~> 3.0"
      }
    }
}

provider "azurerm" {
  features {}
  subscription_id = "5e4fafbb-ef69-4e17-8835-68030d81f758"
}

resource "azurerm_resource_group" "rg3" {
  name = "CICD_rg3"
  location = "central india"
}

resource "azurerm_storage_account" "stg"{
  name = "rajstg123"
  location = azurerm_resource_group.rg3.location
  resource_group_name = azurerm_resource_group.rg3.name
  account_tier = "Standard"
  account_replication_type = "LRS"
}
