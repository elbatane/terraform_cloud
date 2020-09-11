data "azurerm_resource_group" "kvt_rg" {
  name = var.resource_group
}

resource "azurerm_key_vault" "kvt" {
  name                            = var.name
  location                        = data.azurerm_resource_group.kvt_rg.location
  resource_group_name             = data.azurerm_resource_group.kvt_rg.name
  enabled_for_disk_encryption     = true
  enabled_for_template_deployment = true
  tenant_id                       = var.tenant_id

  sku_name = var.sku

  access_policy {
    tenant_id = var.tenant_id
    object_id = var.user_object_id

    secret_permissions = [
      "get",
      "list",
      "set"
    ]

    storage_permissions = [
      "get",
    ]
  }

  tags = {
    environment = data.azurerm_resource_group.kvt_rg.tags["environment"]
    channel     = var.channel
  }

  depends_on = ["data.azurerm_resource_group.kvt_rg"]
}
