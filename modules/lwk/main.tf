data "azurerm_resource_group" "lwk_rg" {
  name = var.resource_group
}

locals {
  tags     = data.azurerm_resource_group.lwk_rg.tags
  location = var.location == "" ? data.azurerm_resource_group.lwk_rg.location : var.location

}
resource "azurerm_log_analytics_workspace" "lwk" {
  name                = var.name
  location            = local.location
  resource_group_name = data.azurerm_resource_group.lwk_rg.name
  sku                 = var.sku

  tags = local.tags
}
