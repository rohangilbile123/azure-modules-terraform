variable "resource_group_name" {
  description = "Name of the existing Azure Resource Group"
  type        = string
}

variable "virtual_network1_name" {
  description = "Name of the Virtual Network 1 to create in Azure Resource Group"
  type        = string
}

variable "virtual_network1_address_range" {
  description = "Virtual Network 1 Address Range Azure Resource Group"
  type        = list(string)
}

variable "subnet_name1" {
  description = "Subnet Name 1 Virtual Network 1 Address Range Azure Resource Group"
  type        = string
}

variable "subnet1_address_space_range" {
  description = "Subnet Address Space range of Virtual Network 1 in Azure Resource Group"
  type        = list(string)
}

variable "container_registry1_name" {
  description = "Name of the Container Registry 1 to create in Azure Resource Group"
  type        = string  
}

variable "container_registry1_sku" {
  description = "Name of the Container Registry SKU "
  type        = string  
}

variable "container_registry1_admin_enabled" {
  description = "Container Registry Admin Enabled Status"
  type        = bool  
}

variable "redis_cache1_name" {
  description = "Name of the Redis Cache 1 to create in Azure Resource Group"
  type        = string  
}

variable "redis_cache1_capacity" {
  description = "Capacity of the Redis Cache 1 to create in Azure Resource Group"
  type        = number  
}

variable "redis_cache1_family" {
  description = "Family of the Redis Cache 1 to create in Azure Resource Group"
  type        = string  
}

variable "redis_cache1_sku" {
  description = "SKU of the Redis Cache 1 to create in Azure Resource Group"
  type        = string  
}

variable "redis_cache1_tls_version" {
  description = "Min TLS the Redis Cache 1 to create in Azure Resource Group"
  type        = string  
}

variable "private_dns_zone1_name" {
  description = "Private DNS Zone 1 name"
  type        = string  
}

variable "database_private_link1_name" {
  description = "Private Link 1 name"
  type        = string  
}

variable "database_server1_name" {
  description = "Database Server 1 name"
  type        = string   
}

variable "database1_version" {
  description = "Database Server 1 Version"
  type        = string  
}

variable "public_network1_access_enabled" {
  description = "Public Network access enabled or not"
  type        = bool  
}

variable "database1_admin_username" {
  description = "Database 1 Admin Username"
  type        = string 
}

variable "database1_admin_password" {
  description = "Database 1 Admin Password"
  type        = string 
}

variable "database1_zone" {
  description = "Database 1 Zone"
  type        = string 
}

variable "database1_storage_mb" {
  description = "Database 1 Storage in MB"
  type        = number 
}

variable "database1_storage_tier" {
  description = "Database 1 Storage tier"
  type        = string 
}

variable "database1_sku_name" {
  description = "Database 1 SKU name"
  type        = string 
}

variable "kubernetes_cluster1_name" {
   description = "Name of the Kubernetes Cluster"
   type        = string
}

variable "dns_prefix1" {
   description = "DNS prefix of Kubernetes Cluster"
   type        = string
}

variable "kubernetes_cluster1_node_pool_name" {
    description = "Node Pool name of Kubernetes Cluster"
    type        = string
}

variable "kubernetes_cluster1_node_pool_count" {
    description = "Node Pool count of Kubernetes Cluster"
    type        = number
}

variable "kubernetes_cluster1_node_pool_vm_size" {
    description = "Node Pool VM Size of Kubernetes Cluster"
    type        = string
}