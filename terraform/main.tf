resource "azurerm_resource_group" "rg-1" {
    name     = var.rg_name
    location = var.location
  
}

resource "azurerm_virtual_network" "vnet-1" {
    name                = "vnet-1"
    address_space       = ["10.0.0.0/16"]
    location            = azurerm_resource_group.rg-1.location
    resource_group_name = azurerm_resource_group.rg-1.name
}

resource "azurerm_subnet" "subnet-1" {
    name                 = "subnet-1"
    resource_group_name  = azurerm_resource_group.rg-1.name
    virtual_network_name = azurerm_virtual_network.vnet-1.name
    address_prefixes     = ["10.0.0.1/24"]
}

resource "azurerm_container_registry" "acr-1" {
    name                = "acr1vatsal"
    resource_group_name = azurerm_resource_group.rg-1.name
    location            = azurerm_resource_group.rg-1.location
    sku                 = "Basic"
    admin_enabled       = true
}