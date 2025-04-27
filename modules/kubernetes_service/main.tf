resource "azurerm_kubernetes_cluster" "cluster" {
  name                = var.kubernetes_cluster_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = var.kubernetes_cluster_node_pool_name
    node_count = var.kubernetes_cluster_node_pool_count
    vm_size    = var.kubernetes_cluster_node_pool_vm_size
  }
  identity {
    type = "SystemAssigned"
  }
}