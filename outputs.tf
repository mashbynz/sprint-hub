output "level0_resource_groups" {
  description = "Returns the full set of resource group objects created"

  value = module.level0_region1.resource_groups
}

output "level0_virtual_networks" {
  description = "Returns the full set of virtual networks objects created"

  value = module.level0_region1.virtual_networks
}

output "level0_subnets" {
  description = "Returns the full set of subnets created"

  value = module.level0_region1.subnets
}

output "level0_NSGs" {
  description = "Returns the full set of NSGs created"

  value = module.level0_region1.nsgs
}

output "level0_rts" {
  description = "Returns the full set of Route Tables created"

  value = module.level0_region1.route_table_obj
}
