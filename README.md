# Poc Fortigate IAC 

This project is a lab of Fortigate As Code, that demonstrate that Firewall configuration could be managed by Fortigate and IAC is not only for Cloud or Virtualisation but could also be efficient for on premise purpose.

To be fully dynamic with the creation of firewall objects, we used a json data source that could be dynamicly update from Source Of Truth like Netbox or Nautobot.

# Version

This project was made and test with :
- Terraform v1.5.7
- Provider fortinetdev/fortios v1.23.0
- FortiOS 7.0.12

# Setup 

### Clone and init the project
```bash
git clone <URL>
cd poc-forti-iac
terraform init
```
### Update the provider configuration

In the file "provider.tf", change the hostname and the token (the token must be generated from the Fortigate : System > Administrators > Create new > REST API Admin )
```bash
  hostname     = "<YOUR_FORTIGATE_IP>" 
  token        = "<YOUR_TOKEN_HERE>" 
```