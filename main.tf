resource "gitlab_project_approval_rules" "project_approval_rules" {
  for_each = var.project_approval_rules

  approval_rules = each.value.approval_rules
  project        = each.value.project
}

