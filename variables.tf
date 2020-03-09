# State file variables
variable "lowerlevel_storage_account_name" {}
variable "lowerlevel_container_name" {}
variable "lowerlevel_resource_group_name" {}
variable "lowerlevel_key" {}
variable "subscription_id" {}

# # Resource Group config
variable "fw_rg_config" {
  type = object({
    location   = map(string)
    rg_enabled = bool
    rg_name    = map(string)
    tags = object({
      region1 = map(string)
      region2 = map(string)
    })
  })

  default = {
    location   = {}
    rg_enabled = true
    rg_name    = {}
    tags = {
      region1 = {}
      region2 = {}
    }
  }
  description = "Firewall Resource Group configuration"
}

variable "fw_vnet_config" {
  type = object({
    vnet_name = map(string)
    address_space = object({
      region1 = list(string)
      region2 = list(string)
    })
    base_cidr_block = map(string)
    dns_servers = object({
      region1 = list(string)
      region2 = list(string)
    })
    tags = object({
      region1 = map(string)
      region2 = map(string)
    })
  })

  default = {
    vnet_name = {}
    address_space = {
      region1 = []
      region2 = []
    }
    base_cidr_block = {}
    dns_servers = {
      region1 = []
      region2 = []
    }
    tags = {
      region1 = {}
      region2 = {}
    }
  }
  description = "Firewall VNET configuration"
}

variable "fw_subnets" {
  default = [
    {
      name    = "a"
      newbits = 4
      number  = 1
    },
    {
      name    = "b"
      newbits = 4
      number  = 2
    },
    {
      name    = "c"
      newbits = 4
      number  = 3
    },
  ]
}

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
