# output "firewall_location" {
#   value = azurerm_resource_group.firewall.*.location
# }

# output "firewall_rg_name" {
#   value = azurerm_resource_group.firewall.*.name
# }

# output "log_analytics_location" {
#   value = azurerm_resource_group.log_analytics.*.location
# }

output "firewall_location" {
  value = module.level0.level0_firewall_location
}

output "firewall_rg_name" {
  value = module.level0.level0_firewall_rg_name
}

output "log_analytics_location" {
  value = module.level0.level0_log_analytics_location
}

output "firewall_id" {
  value = module.level1.level1_firewall_id
}

output "la_rg_enabled" {
  value = module.level0.level0_la_rg_enabled
}

output "fw_rg_enabled" {
  value = module.level0.level0_fw_rg_enabled
}