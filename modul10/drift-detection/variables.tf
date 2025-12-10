variable "student_name" {
  description = "Student's name or identifier (will be used in resource naming)"
  type        = string
  default     = "tj42"

  validation {
    condition     = can(regex("^[a-z0-9]+$", var.student_name))
    error_message = "Student name must contain only lowercase letters and numbers, no spaces or special characters."
  }
}

variable "location" {
  description = "The Azure region to deploy to"
  type        = string
  default     = "westeurope"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "cost_center" {
  description = "Cost center for billing"
  type        = string
  default     = "tj42-lab-001"
}
variable "rg_name" {
  type        = string
  description = "Name of the Resource Group to create."
  default     = "tj42-dev-rg"
}
variable "app_service_plan" {
  type        = string
  description = "Name of the App Service Plan to create."
  default     = "tj42-dev-asp"
}
variable "web_app_name" {
  type        = string
  description = "Name of the Web App to create."
  default     = "tj42-dev-webapp"
}
variable application_insights_id {
  type        = string
  description = "Application Insights resource ID."
  default = "/subscriptions/7a3c6854-0fe1-42eb-b5b9-800af1e53d70/resourceGroups/ai_tj42-dev-appins_8f1e408c-5352-492b-9168-13d294f857fb_managed/providers/Microsoft.OperationalInsights/workspaces/managed-tj42-dev-appins-ws"
}

