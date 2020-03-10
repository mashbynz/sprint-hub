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

# module "governance" {
#   source        = "../tf-mod-governance/"

# }

module "level0" {
  source = "../tf-mod-levelzero/"

  fw_rg_enabled        = var.fw_rg_config.rg_enabled
  fw_rg_config         = var.fw_rg_config
  fw_vnet_config       = var.fw_vnet_config
  fw_subnets           = var.fw_subnets
  vnetgw_config        = var.vnetgw_config
  nsg_config           = var.nsg_config
  UntrustSubnet_rules  = var.UntrustSubnet_rules
  TrustedSubnet_rules  = var.TrustedSubnet_rules
  InternalSubnet_rules = var.InternalSubnet_rules
  rvdb-sc-ul_rules     = var.rvdb-sc-ul_rules
  rvdb-sc-dl_rules     = var.rvdb-sc-dl_rules
}

# module "level1" {
#   source        = "../tf-mod-levelone/"

# }

# module "level2" {
#   source        = "../tf-mod-leveltwo/"

# }
