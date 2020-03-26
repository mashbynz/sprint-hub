terraform {
  required_version = ">= 0.12.20"
  backend "azurerm" {
  }
}

provider "azurerm" {
  # version = "<= 1.43.0"
  version = "= 2.0.0"
  features {}

  # Required if deploying via service principal
  # subscription_id = var.subscription_id
  # client_id       = var.client_id
  # client_secret   = var.client_secret
  # tenant_id       = var.tenant_id
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

data "azurerm_client_config" "current" {
}

module "governance" {
  source = "../tf-mod-governance/"

  log_analytics_object = var.log_analytics_object
  log_analytics_suffix = var.log_analytics_suffix

  diagnostics_object = var.diagnostics_object
  networking_object  = var.networking_object

  level0_NSG      = module.level0_region1.nsgs
  level0_networks = module.level0_region1.virtual_networks
}

module "level0_region1" {
  source = "../tf-mod-levelzero/"

  rg_suffix   = var.rg_suffix
  vnet_suffix = var.vnet_suffix
  nsg_suffix  = var.nsg_suffix
  rt_suffix   = var.rt_suffix
  ip_suffix   = var.ip_suffix

  networking_object    = var.networking_object
  resource_groups      = var.resource_groups
  diagnostics_object   = var.diagnostics_object
  log_analytics_object = var.log_analytics_object
  IP_address_object    = var.IP_address_object
}

module "level1_region1" {
  source = "../tf-mod-levelone"

  level0_NSG    = module.level0_region1.nsgs
  level0_subnet = module.level0_region1.subnets
  level0_rt     = module.level0_region1.route_table_obj
  level0_rg     = module.level0_region1.resource_groups
  tenant_id     = data.azurerm_client_config.current.tenant_id
  object_id     = data.azurerm_client_config.current.object_id

  rsv_suffix       = var.rsv_suffix
  key_vault_suffix = var.key_vault_suffix

  rsv_object       = var.rsv_object
  key_vault_object = var.key_vault_object
}

module "level2_region1" {
  source = "../tf-mod-leveltwo"

  level0_vnet                 = module.level0_region1.virtual_networks
  level0_subnet               = module.level0_region1.subnets
  governance_storage_accounts = module.governance.storage_account_obj

  vm_suffix      = var.vm_suffix
  os_disk_suffix = var.os_disk_suffix
  disk_suffix    = var.disk_suffix
  nic_suffix     = var.nic_suffix

  vm_object = var.vm_object
}
