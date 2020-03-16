# State file variables
variable "lowerlevel_storage_account_name" {}
variable "lowerlevel_container_name" {}
variable "lowerlevel_resource_group_name" {}
variable "lowerlevel_key" {}
variable "subscription_id" {}

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

# variable "route_tables" {
#   description = "(Required) Map of the Route Tables to create"
# }

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
