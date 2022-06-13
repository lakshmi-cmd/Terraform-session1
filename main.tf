provider "azurerm" {
  version = ">=2.2.0"
  features {}
}

locals {
  custom_tags = {
    environment = "dev"
    team = "terraform"
  }
}

resource "azurerm_resource_group" "app-rg"{
    name     = "testrg"
    location = "eastus"

    tags = local.custom_tags
      
      }
