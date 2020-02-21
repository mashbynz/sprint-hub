terraform {
  required_version = ">= 0.12.20"
  backend "azurerm" {
  }
}

provider "azurerm" {
  version = "<= 1.43.0"
}

data "terraform_remote_state" "landingzone_hub" {
  backend = "azurerm"
  config = {
    storage_account_name = var.lowerlevel_storage_account_name
    container_name       = var.lowerlevel_container_name
    resource_group_name  = var.lowerlevel_resource_group_name
    key                  = var.lowerlevel_key
  }
}

# module "hub" {
#   source     = "./template/"
#   rg_enabled = var.rg_config.rg_enabled
#   rg_config  = var.rg_config

#   vnet_enabled = var.vnet_config.vnet_enabled
#   vnet_config  = var.vnet_config

#   rules_enabled = var.nsg_config.rules_enabled
#   nsg_config    = var.nsg_config
# }

