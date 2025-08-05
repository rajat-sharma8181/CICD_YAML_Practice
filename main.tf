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
  features { }
  subscription_id = "5e4fafbb-ef69-4e17-8835-68030d81f758"
}

resourece "azurerm_resource_group" "rg" {
name = "CICD_rg"
location = "central india"
}
