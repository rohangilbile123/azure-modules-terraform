resource "azurerm_redis_cache" "redis_cache" {
  name                 = var.redis_cache_name
  non_ssl_port_enabled = false
  access_keys_authentication_enabled = true
  location             = var.resource_group_location
  resource_group_name  = var.resource_group_name
  capacity             = var.redis_cache_capacity
  family               = var.redis_cache_family
  sku_name             = var.redis_cache_sku
  minimum_tls_version  = var.redis_cache_tls_version

  redis_configuration {
    maxmemory_policy                        = "volatile-lru"
  }
}