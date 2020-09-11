variable "resource_group" {
  type        = string
  description = "(Required) The name of the resource group in which the Key Vault is created."
}

variable "name" {
  type        = string
  description = "(Required) Key Vault name."
}
variable "tenant_id" {
  type        = string
  description = "(Required) Tenant ID."
}

variable "user_object_id" {
  type        = string
  description = "(Required) User Object ID."
}

variable "sku" {
  type        = string
  description = "(Required)  The Name of the SKU used for this Key Vault. Possible values are standard and premium."

}


variable "channel" {
  type        = string
  description = "(Required)  Tag Channel."

}

