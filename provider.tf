terraform {
  required_providers {
    fortios = {
      source  = "fortinetdev/fortios"
    }
  }
}

provider "fortios" {
  hostname     = "192.168.5.111" # IP of your Fortigate
  token        = "0xH9HyNGbm4hjNfcQQfc1h3z4th4c5" # local Token, could be pushed on Git
  insecure     = "true" # Allow self-signed certificate
}

