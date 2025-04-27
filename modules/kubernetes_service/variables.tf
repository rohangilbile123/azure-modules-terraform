variable "kubernetes_cluster_name" {
   description = "Name of the Kubernetes Cluster"
   type        = string
}

variable "resource_group_name" {
    description = "Name of the Resource Group"
    type        = string
}

variable "resource_group_location" {
    description = "Location of the Resource Group"
    type        = string
}

variable "dns_prefix" {
    description = "DNS prefix of cluster"
    type        = string
}
variable "kubernetes_cluster_node_pool_name" {
    description = "Node Pool name of Kubernetes Cluster"
    type        = string
}

variable "kubernetes_cluster_node_pool_count" {
    description = "Node Pool count of Kubernetes Cluster"
    type        = number
}

variable "kubernetes_cluster_node_pool_vm_size" {
    description = "Node Pool VM Size of Kubernetes Cluster"
    type        = string
}