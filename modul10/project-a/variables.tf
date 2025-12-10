variable "resource_group_name" {
    type        = string
    description = "Navn på eksisterende Resource Group der Storage Account skal opprettes."
    default = "rg-demo-a-tj42"
}

variable "storage_account_name" {
    type        = string
    description = "Navn på Storage Account som skal opprettes."
    default = "sademoatj42"
}

variable "location" {
    type        = string
    description = "Lokasjon for Resource Group og Storage Account."
    default = "westeurope"
}