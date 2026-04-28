terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "devsecops-rg"
  location = "East US"
  tags = {
    environment = "devsecops"
    project     = "devsecops-azure"
  }
}