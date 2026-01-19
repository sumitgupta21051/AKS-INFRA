resource "azurerm_storage_account" "example" {
  for_each                 = var.stg
  name                     = var.value.stg_name
  resource_group_name      = var.value.resource_group_name
  location                 = var.value.location
  account_tier             = var.value.account_tier
  account_replication_type = var.value.account_replication_type

  tags = var.value.tags
}

