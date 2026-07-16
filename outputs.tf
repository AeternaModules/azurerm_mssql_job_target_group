output "mssql_job_target_groups_id" {
  description = "Map of id values across all mssql_job_target_groups, keyed the same as var.mssql_job_target_groups"
  value       = { for k, v in azurerm_mssql_job_target_group.mssql_job_target_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mssql_job_target_groups_job_agent_id" {
  description = "Map of job_agent_id values across all mssql_job_target_groups, keyed the same as var.mssql_job_target_groups"
  value       = { for k, v in azurerm_mssql_job_target_group.mssql_job_target_groups : k => v.job_agent_id if v.job_agent_id != null && length(v.job_agent_id) > 0 }
}
output "mssql_job_target_groups_job_target" {
  description = "Map of job_target values across all mssql_job_target_groups, keyed the same as var.mssql_job_target_groups"
  value       = { for k, v in azurerm_mssql_job_target_group.mssql_job_target_groups : k => v.job_target if v.job_target != null && length(v.job_target) > 0 }
}
output "mssql_job_target_groups_name" {
  description = "Map of name values across all mssql_job_target_groups, keyed the same as var.mssql_job_target_groups"
  value       = { for k, v in azurerm_mssql_job_target_group.mssql_job_target_groups : k => v.name if v.name != null && length(v.name) > 0 }
}

