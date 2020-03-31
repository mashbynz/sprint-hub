# State file variables
variable "lowerlevel_storage_account_name" {}
variable "lowerlevel_container_name" {}
variable "lowerlevel_resource_group_name" {}
variable "lowerlevel_key" {}
variable "subscription_id" {}
# variable "client_id" {}    
# variable "client_secret" {}
# variable "tenant_id" {}    

variable "resource_groups" {
  description = "(Required) Map of the resource groups to create"
}

variable "rg_suffix" {
  description = "(Optional) You can use a suffix to add to the list of resource groups you want to create"
}

variable "tags" {
  default     = ""
  description = "(Required) tags for the deployment"
}

variable "vnet_suffix" {
  description = "(Optional) You can use a suffix to add to the list of virtual networks you want to create"
  type        = string
}

variable "networking_object" {
  description = "(Required) configuration object describing the networking configuration, as described in README"
}

variable "nsg_suffix" {
  description = "(Optional) You can use a suffix to add to the Network Security Groups you want to create"
  type        = string
}

variable "rt_suffix" {
  description = "(Optional) You can use a suffix to add to the list of Route Tables you want to create"
  type        = string
}

variable "log_analytics_object" {
  description = "(Required) Object describing the configuration of the Log Analytics workspace"
}

variable "log_analytics_suffix" {
  description = "(Optional) The suffix added to the Log Analytics workspace name to ensure it is globally unique"
  type        = string
}

variable "diagnostics_object" {
  description = "(Required) configuration object describing the Diagnostics configuration"
}

# variable "enable_event_hub" {
#   description = "(Required) Set to true to create an event hub for Diagnostics Logging"
#   type = bool
# }

variable "IP_address_object" {
  description = "(Required) configuration object describing the IP Address configuration"
}

variable "ip_suffix" {
  description = "(Optional) You can use a suffix to add to the list of IP Addresses you want to create"
  type        = string
}

variable "rsv_suffix" {
  description = "(Optional) You can use a suffix to add to the list of Recovery Service Vaults you want to create"
  type        = string
}

variable "rsv_object" {
  description = "(Required) configuration object describing the Recovery Service Vault configuration"
}

variable "key_vault_suffix" {
  description = "(Optional) You can use a suffix to add to the list of Key Vaults you want to create"
  type        = string
}

variable "key_vault_object" {
  description = "(Required) configuration object describing the Key Vault configuration"
}

variable "vm_suffix" {
  description = "(Optional) You can use a suffix to add to the list of Virtual Machines you want to create"
  type        = string
}

variable "os_disk_suffix" {
  description = "(Optional) You can use a suffix to add to the OS Disk of the Virtual Machine you want to create"
  type        = string
}

variable "disk_suffix" {
  description = "(Optional) You can use a suffix to add to the Data Disk(s) of the Virtual Machine you want to create"
  type        = string
}

variable "nic_suffix" {
  description = "(Optional) You can use a suffix to add to the NICs you want to create"
  type        = string
}

variable "vm_object" {
  description = "(Required) configuration object describing the Virtual Machine configuration"
}
