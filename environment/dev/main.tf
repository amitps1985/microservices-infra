module "resource_group" {
  source = "../../modules/azurerm_resource_group"
  resource_groups = var.resource_groups
}
module "aks" {
  source = "../../modules/azurerm_kubernetes_services"
  aks_clusters = var.aks_clusters
}
module "acr" {
  source = "../../modules/azurerm_container_registry"
  container_registries = var.container_registries
}