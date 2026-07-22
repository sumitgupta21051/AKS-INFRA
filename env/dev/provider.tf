terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.25.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "sumit"
    storage_account_name = "sumitback1"
    container_name       = "sumitback1"
    key                  = "dev.tfstate"
  }

}

provider "azurerm" {
  features {}
  subscription_id = "ec16d7d8-bc8f-4e56-9366-8ceb1c3eaaa3"
}
