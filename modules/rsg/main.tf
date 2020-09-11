resource "azurerm_resource_group" "rsg" {
  name     = var.name
  location = var.location

  tags = {
    environment = var.environment
    department  = var.department

  }
}
