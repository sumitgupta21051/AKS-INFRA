variable "rgs" {

  type = map(object({

    name       = string
    location   = string
    managed_by = optional(string)
    tags       = optional(map(string))
  }))
}

variable "acr" {
  type = map(object({

    name                = string
    resource_group_name = string
    location            = string
    sku                 = string
    admin_enabled       = bool
    tags                = optional(map(string))

  }))

}

variable "sqlserver" {

  type = map(object({
    name                         = string
    resource_group_name          = string
    location                     = string
    version                      = string
    administrator_login          = string
    administrator_login_password = string
    minimum_tls_version          = string
    tags                         = optional(map(string))
  }))
}

variable "sql_datbase" {

  type = map(object({

    server_name         = string
    resource_group_name = string
    name                = string
    collation           = string
    license_type        = string
    max_size_gb         = number
    sku_name            = string
    enclave_type        = string

    tags = optional(map(string))
  }))
}

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