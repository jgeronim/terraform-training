variable "edgerc_path" {
  type        = string
  default     = "~/.edgerc"
  description = "Path to the edgerc file"
}

variable "config_section" {
  type        = string
  default = "akamai_proserv"
  description = "Config section in the edgerc file"
}

variable "akamai_client_secret" {}
variable "akamai_host" {}
variable "akamai_access_token" {}
variable "akamai_client_token" {}
variable "akamai_account_key" {}