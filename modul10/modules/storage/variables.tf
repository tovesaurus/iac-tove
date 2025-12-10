variable "storage_account_name" {
  type        = string
  default     = "sademotj42"
  description = "Navn på Storage Account som skal opprettes."
}

variable "resource_group_name" {
    type        = string
    description = "Navn på eksisterende Resource Group der Storage Account skal opprettes."
    default = "rg-demo-tj42"
}
variable "location" {
  type        = string
  description = "Azure-region (må samsvare med RG)."
  default     = "westeurope"
}