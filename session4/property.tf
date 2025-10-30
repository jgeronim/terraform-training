
resource "akamai_property" "jg_property" {
  name        = data.akamai_property.jg_property.name
  product_id  = data.akamai_property.jg_property.product_id
  contract_id = data.akamai_group.jg_tf_group.contract_id
  group_id    = data.akamai_group.jg_tf_group.id
  dynamic "hostnames" {
    for_each = local.app_hostnames
    content {
      cname_from = hostnames.value
      cname_to   = akamai_edge_hostname.jg_edge_hostname.edge_hostname
      cert_provisioning_type = "DEFAULT"
    } 
  }
}

resource "akamai_edge_hostname" "jg_edge_hostname" {
 contract_id = data.akamai_group.jg_tf_group.contract_id
 group_id    = data.akamai_group.jg_tf_group.id
 product_id = "prd_HTTP_Content_Del"
 edge_hostname = var.edge_hn == "A" ? "nobodycaresworkharder-2.me.edgesuite.net" : "nobodycaresworkharder-3.me.edgesuite.net"
 ip_behavior   = "IPV4"
}

resource "akamai_property_activation" "jgeronim_activation_1" {
     property_id = data.akamai_property.jg_property.id
     contact = ["jorge@nobodycaresworkharder.me"]
     network = "STAGING"
     note = var.activation_note
     version = 1

     lifecycle {
      ignore_changes = [
        note
        ]
        }
}

resource "akamai_property_activation" "jgeronim_activation_2" {
     property_id = data.akamai_property.jg_property.id
     contact = ["jorge@nobodycaresworkharder.me"]
     network = "PRODUCTION"
     note = var.activation_note
     version = 1

     lifecycle {
       ignore_changes = [ 
        note
        ]
     }
     
     depends_on = [
      akamai_property_activation.jgeronim_activation_1
      ]
}
