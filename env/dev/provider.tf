terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.25.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "sumit"
    storage_account_name = "sumitback"
    container_name       = "sumitback"
    key                  = "dev.tfstate"
  }

}

provider "azurerm" {
  features {}
}
