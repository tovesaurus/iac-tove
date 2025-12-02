locals {
  resource_group_name  = "rg-${var.project_name}-${var.environment}"
  storage_account_name = "st${var.project_name}${var.environment}"
}