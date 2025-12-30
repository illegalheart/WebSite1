variable "location" {
  description = "The Azure Region."
  default     = "japaneast"
}

variable "resource_group_name" {
  description = "The name of the Resource Group."
  default     = "rg-weser-it-web"
}

variable "static_web_app_name" {
  description = "The name of the Static Web App."
  default     = "stapp-weser-it-web"
}
