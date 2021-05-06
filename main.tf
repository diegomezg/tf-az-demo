data "azurerm_resource_group" "diegomez" {
  name = "diego-gomez"
}


resource "azurerm_virtual_network" "test-network" {
  name                = "dg-09-network"
  address_space       = ["10.0.0.0/16"]
  location            = data.azurerm_resource_group.diegomez.location
  resource_group_name = data.azurerm_resource_group.diegomez.name
}