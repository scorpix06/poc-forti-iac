locals {
  addresses = jsondecode(file("${path.module}/data-source/fw-objects-intended.json"))
}

resource "fortios_firewall_object_address" "addresses" {
  for_each = { for addr in local.addresses : addr.name => addr }

  name    = each.value.name
  type    = "ipmask"
  subnet  = each.value.subnet
  comment = each.value.comment
}
