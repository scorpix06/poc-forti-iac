
resource "fortios_system_admin" "iac-admin" {
  accprofile                 = "Super_Admin_API"
  name                       = "admin-iac"
  password                   = "fdafdace"
  comments                   = "PUSHED BY POC IAC TERRAFORM"
  vdom {
    name = "root"
  }
}