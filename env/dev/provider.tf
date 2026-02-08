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
    tenant_id            = "66c291b4-1789-4bcb-9817-6b0339a238bc"
    client_id            = "24173b11-ec1b-4072-813a-0aa8e3e81acf"
    resource_group_name  = "sumit"
    storage_account_name = "sumitbackend"
    container_name       = "sumitbackend"
    key                  = "dev.tfstate"
  }

}

provider "azurerm" {
  features {}
  subscription_id = "580eec40-34b7-4c9b-ba06-bd14c2347042"
}
