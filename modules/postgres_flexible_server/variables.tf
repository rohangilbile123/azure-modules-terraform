variable "private_dns_zone_name" {
    description = "Name of the Private DNS Zone"
    type        = string
}

variable "resource_group_name" {
    description = "Name of the Resource Group"
    type        = string
}

variable "database_private_link_name" {
    description = "Name of the Database Private Link"
    type        = string
}

variable "virtual_network_id" {
   description = "Virtual Network ID value here"
    type        = string
}

variable "database_server_name" {
    description = "Name of the Postgres Flexible server"
    type        = string
}

variable "resource_group_location" {
    description = "Location of the Resource Group"
    type        = string
}

variable "database_version" {
   description = "version of the database"
   type        = string
}

variable "subnet_id" {
   description = "Subnet ID of the database server"
   type        = string
}

variable "public_network_access_enabled" {
  description = "Is public network access enabled"
   type        = bool
}

variable "database_admin_username" {
   description = "Admin Username of Database"
   type        = string
}

variable "database_admin_password" {
   description = "Admin password of Database"
   type        = string
}

variable "database_zone" {
   description = "Database zone"
   type        = string
}

variable "database_storage_mb" {
   description = "Database storage in MB"
   type        = string
}

variable "database_storage_tier" {
   description = "Database storage tier"
   type        = string
}

variable "database_sku_name" {
   description = "SKU name of Database"
   type        = string
}