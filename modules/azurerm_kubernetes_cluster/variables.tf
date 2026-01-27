variable "aks" {
  type = map(object({
    name                             = string
    location                         = string
    resource_group_name              = string
    dns_prefix                       = string
    node_count                       = number
    vm_size                          = string
    role_definition_name             = string
    acr_name                         = string
    skip_service_principal_aad_check = bool
    tags                             = optional(map(string))
  }))
}