locals {
  services = jsondecode(file("${path.module}/data-source/fw-services-intended.json"))
}

resource "fortios_firewallservice_custom" "services" {
  for_each = { for service in local.services : service.name => service }

  name                = each.value.name
  tcp_portrange       = each.value.port
  comment             = each.value.comment
}
