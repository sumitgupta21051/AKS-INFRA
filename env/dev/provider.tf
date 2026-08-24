terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.25.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "sumit"
    storage_account_name = "sumitback2"
    container_name       = "sumitback2"
    key                  = "dev.tfstate"
  }

}

provider "azurerm" {
  features {}
  subscription_id = "bef91940-1785-4fb0-96ac-03ea18cdd81a"
}
