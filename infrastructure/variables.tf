variable "product" {
  type = "string"
  default = "financial-remedy"
}

variable "location" {
  type    = "string"
  default = "UK South"
}

variable "env" {
  type = "string"
}

variable "infrastructure_env" {
  default     = "dev"
  description = "Infrastructure environment to point to"
}

variable "management_security_enabled" {
  type    = "string"
  default = "true"
}

variable "subscription" {
  type = "string"
}

variable "ilbIp"{}
