provider "azurerm" {
  version = "=2.26.0"
  features {}
}

module "resource_group" {
  source  = "app.terraform.io/TestingSAN/rsg/azurerm"
  version = "1.0.0"
  
  name     = var.rsg_name
  location = var.location

  environment = var.rsg_tag_environment
  department  = var.rsg_tag_department
}

module "log_analytics" {

  source = "./modules/lwk"

  resource_group = module.resource_group.resource_group_name
  location       = var.location
  name           = var.lwk_name
  sku            = var.lwk_sku

}


module "key_vault" {

  source = "./modules/kvt"

  name           = var.kvt_name
  resource_group = module.resource_group.resource_group_name
  tenant_id      = var.tenant_id
  user_object_id = var.user_object_id
  sku            = var.kvt_sku

  #Tags
  channel = var.kvt_tag_channel
}


resource "azurerm_monitor_diagnostic_setting" "test" {
  name                       = "example"
  target_resource_id         = module.key_vault.kvt_id
  log_analytics_workspace_id = module.log_analytics.lwk_id

  log {
    category = "AuditEvent"
    enabled  = true

    retention_policy {
      enabled = false
    }
  }

  metric {
    category = "AllMetrics"

    retention_policy {
      enabled = false
    }
  }
}
