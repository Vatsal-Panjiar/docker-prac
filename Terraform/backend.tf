terraform {
  backend "azurerm" {
    resource_group_name  = "RG-2"
    storage_account_name = "tfstatevatsal001"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"

  }
}
 