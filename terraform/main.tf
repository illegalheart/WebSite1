resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_static_site" "web" {
  name                = var.static_web_app_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = "eastasia" # Static Web Apps location
  sku_tier            = "Free"
  sku_size            = "Free"

  tags = {
    Environment = "Production"
    Project     = "Weser-IT"
  }
}

output "deployment_token" {
  value     = azurerm_static_site.web.api_key
  sensitive = true
}

output "default_hostname" {
  value = azurerm_static_site.web.default_host_name
}
