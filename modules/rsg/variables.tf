variable "location" {
  type        = string
  description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
}

variable "name" {
  type        = string
  description = "(Required) Specifies the resource group name. Changing this forces a new resource to be created."
}


#Tags
variable "environment" {
  type        = string
  description = "(Required) This tag will report the environment of the resource"
}

variable "department" {
  type        = string
  description = "(Optional) Department to which the associated resource belongs to."
  default     = ""
}
