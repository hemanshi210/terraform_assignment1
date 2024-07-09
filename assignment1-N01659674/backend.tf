terraform {
  backend "azurerm" {
    storage_account_name = "tfstaten01659674sa"
    container_name       = "tfstatefiles"
    key                  = "terraform.tfstate"
  }
}