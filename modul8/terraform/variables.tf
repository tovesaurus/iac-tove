variable "environment" {
  description = "Environment name (dev, test, prod)"
  type        = string

  validation {
    condition     = contains(["dev", "test", "prod"], var.environment)
    error_message = "Environment must be dev, test, or prod."
  }
}

variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "norwayeast"
}

variable "project_name" {
  description = "Project name used in resource naming"
  type        = string
  default     = "tj42"
}

variable "container_name" {
  description = "Name of the storage container for Terraform state"
  type        = string
  default     = "demo"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "rg-tj42-demo"
}

variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
  default     = "sttj42demo"

}

variable "account_tier" {
  description = "The tier of the storage account"
  type        = string
  default     = "Standard"

}
variable "account_replication_type" {
  description = "The replication type of the storage account"
  type        = string
  default     = "LRS"
}
