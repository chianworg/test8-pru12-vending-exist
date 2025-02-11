terraform {
  required_version = ">= 1.9, < 2.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.0, < 5.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-test8-pru12-state-southeastasia-001"
    storage_account_name = "stotesprusou001ynml"
    container_name       = "pru12-tfstate"
    key                  = "lbu1vend1.tfstate"
  }
}

// below default provider block, uses mgt subscription
provider "azurerm" {
  features {}
  subscription_id = "a66aa8a7-28a9-457b-b879-1cfff0201ed3"
}