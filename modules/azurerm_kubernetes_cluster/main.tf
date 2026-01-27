
resource "azurerm_kubernetes_cluster" "aks" {
  for_each            = var.aks
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  dns_prefix          = each.value.dns_prefix #"exampleaks1"

  default_node_pool {
    name       = "default"
    node_count = each.value.node_count
    vm_size    = each.value.vm_size #"Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = each.value.tags
}

data "azurerm_container_registry" "acr" {
  for_each= var.aks
  name                = each.value.acr_name
  resource_group_name = each.value.resource_group_name
}

resource "azurerm_role_assignment" "role" {
  for_each = var.aks
  principal_id                     = azurerm_kubernetes_cluster.aks[each.key].kubelet_identity[0].object_id
  role_definition_name             = each.value.role_definition_name
  scope                            = data.azurerm_container_registry.acr[each.key].id
  skip_service_principal_aad_check = each.value.skip_service_principal_aad_check
}

