locals {
  vlans = jsondecode(file("${path.module}/data-source/fw-vlans-intended.json"))
}

resource "fortios_system_interface" "VLANS" {
  for_each = { for vlan in local.vlans : vlan.name => vlan }

  name    = each.value.name
  ip           = each.value.ip
  type         = "vlan"
  vdom         = "root"
  description  = "PUSHED BY POC IAC TERRAFORM"
  vlanid       = each.value.vlanid
  allowaccess  = "ping"
  interface    = "lan"
}
