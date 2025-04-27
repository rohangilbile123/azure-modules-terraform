variable "virtual_network_name" {
    description = "Name of the Virtual Network"
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

variable "address_space_range" {
    description = "Address Space Range of VNET"
    type        = list(string)
}