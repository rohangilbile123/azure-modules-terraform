module "virtual_network" {
  source = "./modules/virtual_network"
  virtual_network_name = var.virtual_network1_name
  resource_group_name = data.azurerm_resource_group.terraform_ordrio_resource_group.name
  resource_group_location = data.azurerm_resource_group.terraform_ordrio_resource_group.location
  address_space_range = var.virtual_network1_address_range
}

module "subnet" {
  source = "./modules/subnet"
  subnet_name = var.subnet_name1
  resource_group_name =  data.azurerm_resource_group.terraform_ordrio_resource_group.name
  virtual_network_name = module.virtual_network.virtual_network_name
  subnet_address_space_range = var.subnet1_address_space_range
  delegations = [
    {
      name         = "database-delegate"
      service_name = "Microsoft.DBforPostgreSQL/flexibleServers"
      actions      = [
        "Microsoft.Network/virtualNetworks/subnets/join/action",
      ]
    }
  ]
}

module "container_registry" {
  source = "./modules/container_registry"
  container_registry_name = var.container_registry1_name
  resource_group_name = data.azurerm_resource_group.terraform_ordrio_resource_group.name
  resource_group_location = data.azurerm_resource_group.terraform_ordrio_resource_group.location
  container_registry_sku = var.container_registry1_sku
  container_registry_admin_enabled = var.container_registry1_admin_enabled
}

module "redis_cache" {
  source = "./modules/cache_for_redis"
  redis_cache_name = var.redis_cache1_name
  resource_group_location = data.azurerm_resource_group.terraform_ordrio_resource_group.location
  resource_group_name = data.azurerm_resource_group.terraform_ordrio_resource_group.name
  redis_cache_capacity = var.redis_cache1_capacity
  redis_cache_family = var.redis_cache1_family
  redis_cache_sku = var.redis_cache1_sku
  redis_cache_tls_version = var.redis_cache1_tls_version
}

module "postgres_flexible_server" {
  source = "./modules/postgres_flexible_server"
  private_dns_zone_name = var.private_dns_zone1_name
  resource_group_name =  data.azurerm_resource_group.terraform_ordrio_resource_group.name
  database_private_link_name = var.database_private_link1_name
  virtual_network_id = module.virtual_network.virtual_network_id
  database_server_name = var.database_server1_name
  resource_group_location = data.azurerm_resource_group.terraform_ordrio_resource_group.location
  database_version = var.database1_version
  subnet_id = module.subnet.subnet_id
  public_network_access_enabled = var.public_network1_access_enabled
  database_admin_username = var.database1_admin_username
  database_admin_password = var.database1_admin_password
  database_zone = var.database1_zone
  database_storage_mb = var.database1_storage_mb
  database_storage_tier = var.database1_storage_tier
  database_sku_name = var.database1_sku_name
}

module "kubernetes_cluster" {
  source = "./modules/kubernetes_service"
  kubernetes_cluster_name = var.kubernetes_cluster1_name
  resource_group_location = data.azurerm_resource_group.terraform_ordrio_resource_group.location
  resource_group_name = data.azurerm_resource_group.terraform_ordrio_resource_group.name
  dns_prefix = var.dns_prefix1
  kubernetes_cluster_node_pool_name = var.kubernetes_cluster1_node_pool_name
  kubernetes_cluster_node_pool_count = var.kubernetes_cluster1_node_pool_count
  kubernetes_cluster_node_pool_vm_size = var.kubernetes_cluster1_node_pool_vm_size
}
