resource "akamai_appsec_configuration" "my_security_configuration" {
 name        = "jgeronim security configuration"
 description = "This is my first security configuration."
 contract_id = data.akamai_group.jg_tf_group.contract_id
 group_id    = data.akamai_group.jg_tf_group.id
 host_names  = local.property_hostnames
}

resource "akamai_appsec_security_policy" "jg-security-policy" {
  config_id              = akamai_appsec_configuration.my_security_configuration.config_id
  security_policy_name   = "jgeronim-policy"
  security_policy_prefix = "abc1"
}

resource "akamai_appsec_configuration" "my_second_security_configuration" {
 name        = "jgeronim second security configuration"
 description = "This is my second security configuration."
 contract_id = data.akamai_group.jg_tf_group.contract_id
 group_id    = data.akamai_group.jg_tf_group.id
 host_names  = local.property_hostnames
}

resource "akamai_appsec_security_policy" "jg-second-security-policy" {
  config_id              = akamai_appsec_configuration.my_second_security_configuration.id
  security_policy_name   = "jg-second-policy"
  security_policy_prefix = "abc2"
}
