locals {
  policies = jsondecode(file("${path.module}/data-source/fw-policies-intended.json"))
}

resource "fortios_firewall_policy" "policies" {
  for_each = { for policy in local.policies : policy.name => policy }

  depends_on = [
    fortios_system_interface.VLANS,
    fortios_firewall_object_address.addresses,
    fortios_firewallservice_custom.services

  ]

  action             = each.value.action
  name               = each.value.name
  schedule           = each.value.schedule
  
  dstaddr { name = each.value.dstaddr }
  dstintf { name = each.value.dstintf }
  service { name = each.value.service }
  srcaddr { name = each.value.srcaddr }
  srcintf { name = each.value.srcintf }
}


