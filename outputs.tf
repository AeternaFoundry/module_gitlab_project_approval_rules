output "project_approval_rules_id" {
  description = "Map of id values across all project_approval_rules, keyed the same as var.project_approval_rules except keys with no id are omitted"
  value       = { for k, v in gitlab_project_approval_rules.project_approval_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "project_approval_rules_approval_rules" {
  description = "Map of approval_rules values across all project_approval_rules, keyed the same as var.project_approval_rules except keys with no approval_rules are omitted"
  value       = { for k, v in gitlab_project_approval_rules.project_approval_rules : k => v.approval_rules if v.approval_rules != null && length(v.approval_rules) > 0 }
}
output "project_approval_rules_project" {
  description = "Map of project values across all project_approval_rules, keyed the same as var.project_approval_rules except keys with no project are omitted"
  value       = { for k, v in gitlab_project_approval_rules.project_approval_rules : k => v.project if v.project != null && length(v.project) > 0 }
}

