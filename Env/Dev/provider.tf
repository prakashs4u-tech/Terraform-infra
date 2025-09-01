terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.41.0"
    }
  }
  backend "azurerm" {
      resource_group_name  = "rg_dev"
      storage_account_name = "storage0101"
      container_name       = "pk-container"
      key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "a249569e-1b10-4606-ad72-895b15a0f240"
}
