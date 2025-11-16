resource "fortios_firewallservice_custom" "trname" {
  name                = "S_TCP/443"
  tcp_portrange       = "443"
  comment             = "PUSHED BY POC IAC TERRAFORM"
}
