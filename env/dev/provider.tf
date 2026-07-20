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
  subscription_id = "2b3920e9-30f7-44c4-9a49-07db5fc6bcae"
}
