resource "azurerm_resource_group" "az_resource_grp" {
  name     = var.resource_group_name
  location = "East US"
}
resource "azurerm_app_service_plan" "az_app_plan" {
  name                = var.service_plan_name
  location            = azurerm_resource_group.az_resource_grp.location
  resource_group_name = azurerm_resource_group.az_resource_grp.name
  kind                = "Linux"
  reserved            = true

  sku {
    tier = "Basic"
    size = "B1"
  }
}
resource "azurerm_app_service" "az_webapp" {
  name                = var.webapp_name
  location            = azurerm_resource_group.az_resource_grp.location
  resource_group_name = azurerm_resource_group.az_resource_grp.name
  app_service_plan_id = azurerm_app_service_plan.az_app_plan.id

  site_config {
    dotnet_framework_version = "v6.0"
    always_on                = "true"
  }
}
