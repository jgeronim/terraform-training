resource "akamai_property" "jg_property2" {
  name        = "jgeronim_property2.com"
  product_id  = "prd_HTTP_Content_Del"
  contract_id = data.akamai_group.jg_tf_group.contract_id
  group_id    = data.akamai_group.jg_tf_group.id
  hostnames {
    cname_from = data.akamai_property_hostnames.my-property-hostnames.hostnames[0].cname_from
    cname_to   = akamai_edge_hostname.jg_edge_hostname.edge_hostname
    cert_provisioning_type = "DEFAULT"
  }
}

resource "akamai_edge_hostname" "jg_edge_hostname" {
 contract_id = data.akamai_group.jg_tf_group.contract_id
 group_id    = data.akamai_group.jg_tf_group.id
 product_id = "prd_HTTP_Content_Del"
 edge_hostname = "nobodycaresworkharder-2.me.edgesuite.net"
 ip_behavior   = "IPV4"
}
