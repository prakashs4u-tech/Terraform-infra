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
  


}
