output "mssql_job_target_groups" {
  description = "All mssql_job_target_group resources"
  value       = azurerm_mssql_job_target_group.mssql_job_target_groups
}
output "mssql_job_target_groups_job_agent_id" {
  description = "List of job_agent_id values across all mssql_job_target_groups"
  value       = [for k, v in azurerm_mssql_job_target_group.mssql_job_target_groups : v.job_agent_id]
}
output "mssql_job_target_groups_job_target" {
  description = "List of job_target values across all mssql_job_target_groups"
  value       = [for k, v in azurerm_mssql_job_target_group.mssql_job_target_groups : v.job_target]
}
output "mssql_job_target_groups_name" {
  description = "List of name values across all mssql_job_target_groups"
  value       = [for k, v in azurerm_mssql_job_target_group.mssql_job_target_groups : v.name]
}

