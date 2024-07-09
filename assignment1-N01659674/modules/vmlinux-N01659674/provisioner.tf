resource "null_resource" "linux_provisioner" {
  for_each = tomap({
    for idx, name in var.linux_vm_names :
    name => name
  })

  depends_on = [
    azurerm_linux_virtual_machine.linux_vm

  ]

  connection {
    type        = "ssh"
    user        = var.admin_username
    private_key = file(var.private_key_path)
    host        = azurerm_public_ip.public_ip[each.key].fqdn
  }


  provisioner "remote-exec" {
    inline = [
      "sleep 30",
      "echo $(hostname)"
    ]
  }
}
