variable "subnet_name" {
    description = "Name of the Subnet in Virtual Network"
    type        = string
}

variable "virtual_network_name"{
    description = "Location of the Resource Group"
    type        = string
}

variable "resource_group_name" {
    description = "Name of the Resource Group"
    type        = string
}

variable "subnet_address_space_range" {
    description = "Subnet of Address Space Range of VNET"
    type        = list(string)
}

variable "delegations" {
  description = "List of delegations for the subnet"
  type        = list(object({
    name          = string
    service_name  = string
    actions       = list(string)
  }))
  default = []
}