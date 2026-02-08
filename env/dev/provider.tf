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
    tenant_id            = "d37aee34-5a74-406c-b715-bf65c026f58b"
    client_id            = "9750216e-9277-49dd-8678-cf59643ecc6b"
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
