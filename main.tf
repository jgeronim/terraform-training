data "akamai_group" "jg_tf_group" {
 group_name = "jg-tf-group"
 contract_id = "ctr_1-ABCD"
}

data "akamai_appsec_configuration" "jg_tf_appsec_config" {
 name = "jg-tf-appsec-config"
}

data "akamai_property" "jg_tf_property" {
 name = "jg-tf-property"
}
