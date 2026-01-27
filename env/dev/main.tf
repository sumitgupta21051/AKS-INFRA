module "rg" {
  source = "../../modules/azurerm_resource_group"
  rgs    = var.rgs
}

module "acr" {
    depends_on = [ module.rg ]
  source = "../../modules/azurerm_container_registry"
  acr    = var.acr
}

module "sql_server" {
    depends_on = [ module.rg ]
    source = "../../modules/azurerm_sql_server"
    sqlserver= var.sqlserver
}

module "sql_database"{
    depends_on = [ module.sql_server ]
    source= "../../modules/azurerm_sql_database"
    sql_datbase= var.sql_datbase
}

module "aks" {
    depends_on = [ module.rg ,module.acr]
    source = "../../modules/azurerm_kubernetes_cluster"
    aks=var.aks
}