resource "akamai_edge_hostname" "jg_edge_hostname" {
 contract_id = "1-1NC95D"
 group_id    = "19293"
 product_id = "Fresca"
 edge_hostname = "jg-edge-hostname.akamaihd.net"
 ip_behavior   = "IPV4"
}

resource "akamai_property" "jg_property" {
  name        = "JG-Property"
  product_id  = "Fresca"
  contract_id = "1-1NC95D"
  group_id    = "19293"
  hostnames {
    cname_from = "jg_property.example.com"
    cname_to   = akamai_edge_hostname.jg_edge_hostname.edge_hostname
    cert_provisioning_type = "CPS_MANAGED"
  }
}
