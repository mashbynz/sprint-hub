# variable "rg_enabled" {}
# variable "vnet_enabled" {}
# variable "rules_enabled" {}

# # Resource Groups
# variable "rg_config" {
#   type = object({
#     location   = map(string)
#     rg_enabled = bool
#     rg_name    = map(string)
#     tags       = map(string)
#   })

#   default = {
#     location   = {}
#     rg_enabled = true
#     rg_name    = {}
#     tags       = {}
#   }
#   description = "Default Resource Group configuration"
# }

# # Networks
# variable "vnet_config" {
#   type = object({
#     location     = map(string)
#     vnet_enabled = bool
#     address_space = object({
#       ae  = list(string)
#       ase = list(string)
#     })
#     vnet_name       = map(string)
#     subnet_name     = map(string)
#     subnet_prefix   = map(string)
#     rt_name         = map(string)
#     route_name      = map(string)
#     rt_prefix       = map(string)
#     rt_nexthop_type = map(string)
#     rt_nexthop_ip   = map(string)
#     nsg_name        = map(string)
#     tags            = map(string)
#   })

#   default = {
#     location     = {}
#     vnet_enabled = true
#     address_space = {
#       ae  = []
#       ase = []
#     }
#     vnet_name       = {}
#     subnet_name     = {}
#     subnet_prefix   = {}
#     rt_name         = {}
#     route_name      = {}
#     rt_prefix       = {}
#     rt_nexthop_type = {}
#     rt_nexthop_ip   = {}
#     nsg_name        = {}
#     tags            = {}
#   }
#   description = "Default VNET configuration"
# }

# # NSG Rule Config
# variable "nsg_config" {
#   type = object({
#     rules_enabled           = bool
#     rule_name               = map(string)
#     rule_priority           = map(number)
#     rule_direction          = map(string)
#     rule_access             = map(string)
#     rule_protocol           = map(string)
#     rule_source_range       = map(string)
#     rule_destination_range  = map(string)
#     rule_source_prefix      = map(string)
#     rule_destination_prefix = map(string)
#   })

#   default = {
#     rules_enabled           = true
#     rule_name               = {}
#     rule_priority           = {}
#     rule_direction          = {}
#     rule_access             = {}
#     rule_protocol           = {}
#     rule_source_range       = {}
#     rule_destination_range  = {}
#     rule_source_prefix      = {}
#     rule_destination_prefix = {}
#   }
#   description = "Default NSG Rule configuration"
# }