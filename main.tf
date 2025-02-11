module "lz_vending" {
  source  = "Azure/lz-vending/azurerm"
  version = "v4.1.5" # change this to your desired version, https://www.terraform.io/language/expressions/version-constraints

  location = "southeastasia"

  # existing subscription
  subscription_id = "d30aa1af-4fdf-427b-b19b-7fd032ffd95c"

  # management group association variables
  subscription_management_group_association_enabled = true
  subscription_management_group_id                  = "lbu1"

  # virtual network variables
  virtual_network_enabled = true
  virtual_networks = {
    vnet1 = {
      name                    = "lbu1spoke1"
      address_space           = ["192.168.2.0/24"]
      resource_group_name     = "lbu1rg1"
      vwan_connection_enabled = true
      vwan_hub_resource_id    = "/subscriptions/ff3bfb36-04e0-42d0-a610-525c7620ed41/resourceGroups/rg-hub-southeastasia/providers/Microsoft.Network/virtualHubs/vwan-hub-southeastasia" //need to replace with hub resource id manually until ALZ outputs this
    }
  }
}