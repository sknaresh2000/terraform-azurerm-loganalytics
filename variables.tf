variable "location" {
  type        = string
  description = "The Azure region where the log analytics should exist. Changing this forces a new resource to be created."
  default     = "eastus"
}

variable "name" {
  type        = string
  description = "The name of the log analytics to create"
}

variable "rg_name" {
  type        = string
  description = "The name of the resource group where the log analytics will be created"
}

variable "tags" {
  type        = map(any)
  description = "A mapping of tags to assign to the resource"
}

variable "sku" {
  type        = string
  description = "Specifies the SKU of the Log Analytics Workspace. Possible values are Free, PerNode, Premium, Standard, Standalone, Unlimited, CapacityReservation, and PerGB2018 (new SKU as of 2018-04-03). Defaults to Free"
  default     = "Free"
}

variable "retention_in_days" {
  type        = number
  description = "The workspace data retention in days. Possible values are either 7 (Free Tier only) or range between 30 and 730"
  default     = 7
}
