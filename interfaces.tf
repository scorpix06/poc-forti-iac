resource "fortios_system_interface" "VLAN_300" {
  ip           = "192.168.10.1 255.255.255.0"
  name         = "VLAN_300"
  type         = "vlan"
  vdom         = "root"
  description  = "PUSHED BY POC IAC TERRAFORM"
  vlanid       = 300
  allowaccess  =  "ping"
  interface    = "lan"
}

resource "fortios_system_interface" "VLAN_301" {
  ip           = "192.168.11.1 255.255.255.0"
  name         = "VLAN_301"
  type         = "vlan"
  vdom         = "root"
  description  = "PUSHED BY POC IAC TERRAFORM"
  vlanid       = 301
  allowaccess  = "ping"
  interface    = "lan"
}