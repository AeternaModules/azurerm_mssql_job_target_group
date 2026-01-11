variable "mssql_job_target_groups" {
  description = <<EOT
Map of mssql_job_target_groups, attributes below
Required:
    - job_agent_id
    - name
Optional:
    - job_target (block):
        - database_name (optional)
        - elastic_pool_name (optional)
        - job_credential_id (optional)
        - membership_type (optional)
        - server_name (required)
EOT

  type = map(object({
    job_agent_id = string
    name         = string
    job_target = optional(object({
      database_name     = optional(string)
      elastic_pool_name = optional(string)
      job_credential_id = optional(string)
      membership_type   = optional(string, "Include")
      server_name       = string
    }))
  }))
}

