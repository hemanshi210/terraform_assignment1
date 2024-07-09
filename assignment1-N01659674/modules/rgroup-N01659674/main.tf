resource "azurerm_resource_group" "rg_group" {
  name     = "${var.humber_id}-rg"
  location = var.location
  tags     = var.tags
}

