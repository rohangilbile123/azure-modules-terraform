variable "redis_cache_name" {
    description = "Name of the redis cache"
    type        = string
}

variable "resource_group_location" {
    description = "Location of the Resource Group"
    type        = string
}

variable "resource_group_name" {
    description = "Name of the Resource Group"
    type        = string
}

variable "redis_cache_capacity" {
    description = "Capacity of the redis cache"
    type        = number
}

variable "redis_cache_family" {
    description = "Family of the redis cache"
    type        = string
}

variable "redis_cache_sku" {
    description = "SKU of the redis cache"
    type        = string
}

variable "redis_cache_tls_version" {
    description = "TLS of the redis cache"
    type        = string
}