resource "akamai_appsec_configuration" "my_third_security_configuration" {
 name        = "jgeronim third security configuration"
 description = "This is my third security configuration."
 contract_id = data.akamai_group.jg_tf_group.contract_id
 group_id    = data.akamai_group.jg_tf_group.id
 host_names  = local.property_hostnames
}

resource "akamai_appsec_security_policy" "jg-security-policy" {
  config_id              = akamai_appsec_configuration.my_third_security_configuration.config_id
  security_policy_name   = "jgeronim-third-policy"
  security_policy_prefix = "abc1"
}

resource "akamai_appsec_configuration" "my_fourth_security_configuration" {
 name        = "jgeronim fourth security configuration"
 description = "This is my fourth security configuration."
 contract_id = data.akamai_group.jg_tf_group.contract_id
 group_id    = data.akamai_group.jg_tf_group.id
 host_names  = local.property_hostnames
}

resource "akamai_appsec_security_policy" "jg-second-security-policy" {
  config_id              = akamai_appsec_configuration.my_fourth_security_configuration.id
  security_policy_name   = "jgeronim-fourth-policy"
  security_policy_prefix = "abc2"
}
