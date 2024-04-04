resource "azurerm_resource_group" "rg" {
  name     = var.rgname
  location = var.rglocation
}

resource "azurerm_service_plan" "example" {
  name                = var.planname
  resource_group_name = var.rgname
  location            = var.rglocation
  os_type             = var.kind
  sku_name            = "P1v2"
  depends_on [azurerm_resource_group.rg]
}
