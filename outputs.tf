output "mssql_job_target_groups_job_agent_id" {
  description = "Map of job_agent_id values across all mssql_job_target_groups, keyed the same as var.mssql_job_target_groups"
  value       = { for k, v in azurerm_mssql_job_target_group.mssql_job_target_groups : k => v.job_agent_id }
}
output "mssql_job_target_groups_job_target" {
  description = "Map of job_target values across all mssql_job_target_groups, keyed the same as var.mssql_job_target_groups"
  value       = { for k, v in azurerm_mssql_job_target_group.mssql_job_target_groups : k => v.job_target }
}
output "mssql_job_target_groups_name" {
  description = "Map of name values across all mssql_job_target_groups, keyed the same as var.mssql_job_target_groups"
  value       = { for k, v in azurerm_mssql_job_target_group.mssql_job_target_groups : k => v.name }
}

