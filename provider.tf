# Configure the FortiOS Provider for FortiGate
terraform {
  required_providers {
    fortios = {
      source  = "fortinetdev/fortios"
    }
  }
}

provider "fortios" {
  hostname     = "192.168.5.111"
  token        = "0xH9HyNGbm4hjNfcQQfc1h3z4th4c5"
  insecure     = "true"
}

