resource "akamai_cp_code" "jg_cp_code" {
  name        = "JG CP Code"
  contract_id = data.akamai_property.jg_tf_property.contract_id
  group_id    = "12345"
  product_id = "prd_JG_1"
}

resource "akamai_edge_hostname" "jg_edge_hostname" {
  contract_id   = data.akamai_property.jg_tf_property.contract_id
  group_id      = "12345"
  product_id = akamai_cp_code.jg_cp_code.product_id
  edge_hostname = "jg-edge-hostname.akamaihd.net"
  ip_behavior   = "IPV4"
}

resource "akamai_property" "jg_property" {
  name        = "JG-Property"
  product_id  = akamai_cp_code.jg_cp_code.product_id
  contract_id = data.akamai_property.jg_tf_property.contract_id
  group_id    = "12345"
  hostnames {
    cname_from = "jg_property.example.com"
    cname_to   = akamai_edge_hostname.jg_edge_hostname.edge_hostname
    cert_provisioning_type = "CPS_MANAGED"
  }
}
