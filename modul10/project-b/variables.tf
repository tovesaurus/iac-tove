variable "resource_group_name" {
  type        = string
  description = "Navn på eksisterende Resource Group der Storage Account skal opprettes."
  default     = "rg-demo-b-tj42"
}

variable "location" {
  type        = string
  description = "Lokasjon for Resource Group og Storage Account."
  default     = "westeurope"
}
variable "storage_account_name" {
  type        = string
  description = "Navn på Storage Account som skal opprettes."
  default     = "sademoatj42"
}