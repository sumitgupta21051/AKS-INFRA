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
    tenant_id            = "46a7ebd6-3fb7-4fd3-9f4a-6d22dcc2eb40"
    client_id            = "cc52235b-f822-45d4-ae19-f3be8798ff6b"
    resource_group_name  = "sumit"
    storage_account_name = "sumitback"
    container_name       = "sumitback"
    key                  = "dev.tfstate"
  }

}

provider "azurerm" {
  features {}
  subscription_id = "00442ed7-647a-4a64-8dae-fb9af5a63eff"
}
