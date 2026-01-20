terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.25.0"
    }
  }
  # backend "azurerm" {
  #   use_oidc              = true
  #   resource_group_name  = "sumit"      
  #   storage_account_name = "sumit1"      
  #   container_name       = "sumit1"      
  #   key                  = "dev.tfstate" 
  # }
  
}

provider "azurerm" {
  features {}
  subscription_id = "cef3b1fa-2c9d-4212-843c-0107fc35ca77"
}
