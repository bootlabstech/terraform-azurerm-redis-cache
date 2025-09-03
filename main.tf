resource "azurerm_redis_cache" "azurerm_redis_cache" {
  name                          = var.name
  location                      = var.location
  resource_group_name           = var.resource_group_name
  capacity                      = var.capacity
  family                        = var.family
  sku_name                      = var.sku_name
  minimum_tls_version           = var.minimum_tls_version
  public_network_access_enabled = var.public_network_access_enabled
  redis_version                 = var.redis_version
  identity {
    type = var.type
  }
  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}



