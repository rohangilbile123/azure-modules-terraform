resource "azurerm_private_dns_zone" "private_dns_zone" {
  name                = var.private_dns_zone_name
  resource_group_name = var.resource_group_name
}

resource "azurerm_private_dns_zone_virtual_network_link" "database_private_link" {
  name                  = var.database_private_link_name
  private_dns_zone_name = azurerm_private_dns_zone.private_dns_zone.name
  virtual_network_id    = var.virtual_network_id
  resource_group_name   = var.resource_group_name
}

resource "azurerm_postgresql_flexible_server" "postgresql_server" {
  name                          = var.database_server_name
  resource_group_name           = var.resource_group_name
  location                      = var.resource_group_location
  version                       = var.database_version
  delegated_subnet_id           = var.subnet_id
  private_dns_zone_id           = azurerm_private_dns_zone.private_dns_zone.id
  public_network_access_enabled = var.public_network_access_enabled
  administrator_login           = var.database_admin_username
  administrator_password        = var.database_admin_password
  zone                          = var.database_zone

  storage_mb   = var.database_storage_mb
  storage_tier = var.database_storage_tier
  sku_name   = var.database_sku_name
}