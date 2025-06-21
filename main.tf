terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.9"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "thulanimtc_rg" {
  name     = "thulanimtc-resources"
  location = "East US 2" # note the space‑case tweak
  tags = {
    environment = "dev"
  }
}
