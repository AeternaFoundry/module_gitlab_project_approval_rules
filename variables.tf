variable "project_approval_rules" {
  description = <<EOT
Map of project_approval_rules, attributes below
Required:
    - approval_rules
    - project
EOT

  type = map(object({
    approval_rules = set(object({
      applies_to_all_protected_branches = optional(bool)
      approvals_required                = number
      group_ids                         = optional(set(number))
      name                              = string
      protected_branch_ids              = optional(set(number))
      report_type                       = optional(string)
      rule_type                         = optional(string)
      user_ids                          = optional(set(number))
    }))
    project = string
  }))
}

