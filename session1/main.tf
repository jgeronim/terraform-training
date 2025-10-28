data "akamai_group" "jg_tf_group" {
 group_name = "jgeronim"
 contract_id = "1-1NC95D"
}

data "akamai_appsec_configuration" "my_security_configuration" {
 name        = "jgeronim security configuration"
}

data "akamai_property" "jg_property" {
  name = "jgeronim_property.com"
}
