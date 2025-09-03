variable "name" {
  description = "The name of the Redis instance."
  type        = string
}
variable "location" {
  description = "The location of the resource group."
  type        = string
}
variable "resource_group_name" {
  description = "The name of the resource group in which to create the Redis instance."
  type        = string
}
variable "capacity" {
  description = "The size of the Redis cache to deploy. Valid values for a SKU family of C (Basic/Standard) are 0, 1, 2, 3, 4, 5, 6, and for P (Premium) family are 1, 2, 3, 4, 5."
  type        = string
}
variable "family" {
  description = "The SKU family/pricing group to use. Valid values are C (for Basic/Standard SKU family) and P (for Premium)"
  type        = string
  default     = "C"
}
variable "sku_name" {
  description = "The SKU of Redis to use. Possible values are Basic, Standard and Premium."
  type        = string
}

variable "minimum_tls_version" {
  description = "The minimum TLS version. Possible values are 1.0, 1.1 and 1.2. Defaults to 1.0."
  type        = string
  default     = "1.2"
}
variable "public_network_access_enabled" {
  description = "Whether or not public network access is allowed for this Redis Cache.Defaults to true"
  type        = bool
  default     = true
}

variable "redis_version" {
  description = "Redis version. Only major version needed. Valid values: 4, 6."
  type        = string
  default     = "6"

}
variable "type" {
  description = "Specifies the type of Managed Service Identity that should be configured on this Redis Cluster. Possible values are SystemAssigned, UserAssigned, SystemAssigned, UserAssigned (to enable both)."
  type        = string
  default     = "SystemAssigned"

}