locals {
  app_hostnames = [
        for app in var.apps : "${app}.nobodycaresworkharder.me"
    ]
}

output "app_output" {
  value = local.app_hostnames  
}

data "akamai_group" "jg_tf_group" {
 group_name = "jgeronim"
 contract_id = "1-1NC95D"
}

data "akamai_property" "jg_property" {
  name = "jgeronim_property.com"
}

data "akamai_property_hostnames" "my-property-hostnames" {
  group_id    = data.akamai_group.jg_tf_group.id
  contract_id = data.akamai_group.jg_tf_group.contract_id
  property_id = data.akamai_property.jg_property.id
  version     = 1
}

data "akamai_property_products" "my_products" {
    contract_id = data.akamai_group.jg_tf_group.contract_id
}
