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
}

resource "azurerm_resource_group" "rg" {
name = "CICD_rg"
location = "central india"
}
