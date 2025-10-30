variable "edge_hn" {
  type        = string
  default = "B"
  description = "Edge Hostname to be used in the property hostname configuration. Options are A or B. If A, use nobodycaresworkharder-2.me.edgesuite.net, if B use nobodycaresworkharder-3.me.edgesuite.net"
}

variable "apps" {
  default = [ "www", "api", "blog", "shop", "cdn"]
}

variable "activation_note" {
  type        = string
  default     = "Initial activation via Terraform"
  description = "Note to be used for the property activation"
}