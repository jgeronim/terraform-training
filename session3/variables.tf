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
