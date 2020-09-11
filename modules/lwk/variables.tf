variable "resource_group" {
  type        = string
  description = "(Required) The name of the resource group in which the Log Analytics workspace is created."
}

variable "name" {
  type        = string
  description = "(Required) Log Analytics workspace name."
}

variable "location" {
  type        = string
  description = "(Optional) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  default     = ""
}

variable "sku" {
  type        = string
  description = "(Required) Specifies the Sku of the Log Analytics Workspace. Possible value PerGB2018"

}

