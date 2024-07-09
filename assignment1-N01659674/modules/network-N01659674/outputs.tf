output "vnet_name" {
  value = azurerm_virtual_network.vpc.name
}

output "subnet_id" {
  value = azurerm_subnet.sn1.id
}
