
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


