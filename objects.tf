resource "fortios_firewall_object_address" "test" {
  name     = "H_IAC-2"
  type     = "ipmask"
  subnet  = "192.168.10.100 255.255.255.255"
  comment  = "PUSHED BY POC IAC TERRAFORM"
}

resource "fortios_firewall_object_address" "test2" {
  name     = "H_IAC-1"
  type     = "ipmask"
  subnet  = "192.168.11.100 255.255.255.255"
  comment  = "PUSHED BY POC IAC TERRAFORM"
}