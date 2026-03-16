terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.25.0"
    }
  }
  backend "azurerm" {
    use_oidc             = true
    use_azuread_auth     = true
    tenant_id            = "d1eccdf5-b342-4b78-ab32-7f11700de7e4"
    client_id            = "4b3d71c1-b88b-425b-b0ee-1870ba610fe2"
    resource_group_name  = "sumit"
    storage_account_name = "sumitbackend1"
    container_name       = "sumitbackend1"
    key                  = "dev.tfstate"
  }

}

provider "azurerm" {
  features {}
  subscription_id = "09250277-3461-4a76-b62f-8499b8d4c172"
}
