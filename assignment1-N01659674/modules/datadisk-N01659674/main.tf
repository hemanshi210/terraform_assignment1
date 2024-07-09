resource "azurerm_managed_disk" "data_disk" {
  count                = 4
  name                 = "${var.humber_id}-data-disk-${count.index}"
  location             = var.location
  resource_group_name  = var.resource_group_name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = 10
}


resource "azurerm_virtual_machine_data_disk_attachment" "data_disk_attachment" {
  count              = 4
  managed_disk_id    = azurerm_managed_disk.data_disk[count.index].id
  virtual_machine_id = element(concat(var.linux_vm_ids, var.windows_vm_ids), count.index)
  lun                = 0
  caching            = "ReadWrite"
}
