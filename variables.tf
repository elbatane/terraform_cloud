#Global
variable "location" {
  type        = string
  description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
}

#Resource Group variables
variable "rsg_name" {
  type        = string
  description = "(Required) Specifies the resource group name. Changing this forces a new resource to be created."
}

variable "rsg_tag_environment" {
  type        = string
  description = "(Required) This tag will report the environment of the resource"
}

variable "rsg_tag_department" {
  type        = string
  description = "(Optional) Department to which the associated resource belongs to."
  default     = ""
}

#Log Analytics worspace variables
variable "lwk_name" {
  type        = string
  description = "(Required) Specifies the Log Analytics Workspace name. Changing this forces a new resource to be created."
}

variable "lwk_sku" {
  type        = string
  description = "(Required) Specifies the Sku of the Log Analytics Workspace. Possible value PerGB2018."
}


#Key Vault variables

variable "kvt_name" {
  type        = string
  description = "(Required) Specifies the Key Vault name. Changing this forces a new resource to be created."
}

variable "tenant_id" {
  type        = string
  description = "(Required) Tenant ID."
}

variable "user_object_id" {
  type        = string
  description = "(Required) User Object ID that will be have access policies to the created Key vault."
}

variable "kvt_sku" {
  type        = string
  description = "(Required) Specifies the Sku of theKey Vault. Possible value standard and premium."
}

variable "kvt_tag_channel" {
  type        = string
  description = "(Optional) Key Vault Channel."
  default     = ""
}
