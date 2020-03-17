output "governance_la_workspaces" {
  description = "Returns the full set of Log Analytics Workspaces created"

  value = module.governance.log_analytics_obj
}

output "governance_la_solutions" {
  description = "Returns the full set of Log Analytics Solutions created"

  value = module.governance.log_analytics_solution_obj
}

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

