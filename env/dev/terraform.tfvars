rgs = {
  rg1 = {
    name     = "aks1"
    location = "japaneast"
    tags = {
      environment = "dev"
      owner       = "aks-team"
} } }

acr = {
  acr1 = {
    name                = "acrrg1"
    resource_group_name = "aks1"
    location            = "japaneast"
    sku                 = "Premium"
    admin_enabled       = false
    tags = {
      environment = "dev"
      owner       = "aks-team"
} } }

sqlserver = {
  sqlserver1 = {
    name                         = "sqlserver-aks"
    resource_group_name          = "aks1"
    location                     = "japaneast"
    version                      = "12.0"
    administrator_login          = "adminuser"
    administrator_login_password = "thisIsKat11"
    minimum_tls_version          = "1.2"
    tags = {
      environment = "dev"
      owner       = "aks-team"
} } }

sql_datbase = {
  sql_datbase1 = {
    server_name         = "sqlserver-aks"
    resource_group_name = "aks1"
    name                = "databse-sql1"
    collation           = "SQL_Latin1_General_CP1_CI_AS"
    license_type        = "LicenseIncluded"
    max_size_gb         = 2
    sku_name            = "S0"
    enclave_type        = "VBS"
    tags = {
      environment = "dev"
      owner       = "aks-team"
} } }

aks = {
  aks1 = {
    name                = "kubernetes-cluster1"
    location            = "japaneast"
    resource_group_name = "aks1"
    dns_prefix          = "exampleaks1"
    node_count          = 2
    vm_size             = "Standard_D2s_v3"
    acr_name            = "acrrg1"
    role_definition_name= "AcrPull"
    skip_service_principal_aad_check = true

    tags = {
      environment = "dev"
      owner       = "aks-team"
} } }
