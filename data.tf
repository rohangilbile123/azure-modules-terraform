# Reference to the existing resource group
data "azurerm_resource_group" "terraform_ordrio_resource_group" {
  name = var.resource_group_name
}