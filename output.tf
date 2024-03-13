output "webapp_domain" {
  value = azurerm_app_service.az_webapp.default_site_hostname
}