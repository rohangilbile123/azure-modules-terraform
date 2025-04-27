terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.14.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  subscription_id = "YOUR-SUBSCRIPTION-ID"
  features {}
}