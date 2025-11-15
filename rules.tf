resource "fortios_firewall_policy" "trname" {
  action             = "accept"
  name               = "IAC-POLICY1"
  schedule           = "always"
  dstaddr {
    name = "H_IAC-2"
  }

  dstintf {
    name = "VLAN_301"
  }

  service {
    name = "S_TCP/443"
  }

  srcaddr {
    name = "H_IAC-1"
  }

  srcintf {
    name = "VLAN_300"
  }
}

