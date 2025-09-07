terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.41.0"
    }
  }
  backend "azurerm" {
      resource_group_name  = "rg-terraformstate"
      storage_account_name = "devops2188"
      container_name       = "pk-container"
      key                  = "dev-terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "a249569e-1b10-4606-ad72-895b15a0f240"

client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
}
