output "resource_group_name" {
  value = module.resource_group.resource_group_name
}

output "key_vault_name" {
  value = module.key_vault.kvt_name
}

output "log_analytics_name" {
  value = module.log_analytics.lwk_name
}
