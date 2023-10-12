variable "resource_group_name" {
  description = "Nom du groupe de ressources"
  type        = string
  default     = "TeoSchool-Djiby"
}

variable "resource_group_location" {
  description = "Emplacement du groupe de ressources"
  type        = string
  default     = "West Europe"
}

variable "container_registry_name" {
  description = "Nom du registre ACR"
  type        = string
  default     = "djibyACR"
}

variable "container_registry_sku" {
  description = "Sku du registre ACR"
  type        = string
  default     = "Standard"
}

variable "admin_enabled" {
  description = "Activation de l'administration du registre ACR"
  type        = bool
  default     = true
}
