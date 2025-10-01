resource "akamai_appsec_configuration" "my_security_configuration" {
 name        = "JG security configuration"
 description = "This is my first security configuration."
 contract_id = "ctr_1-ABCD"
 group_id    = "12345"
 host_names  = ["jg_security_configuration.com"]
}

resource "akamai_appsec_security_policy" "jg-security-policy" {
  config_id              = data.akamai_appsec_configuration.jg_tf_appsec_config.id
  security_policy_name   = "jg-policy"
  security_policy_prefix = "abc1"
}

resource "akamai_appsec_configuration" "my_second_security_configuration" {
 name        = "JG second security configuration"
 description = "This is my second security configuration."
 contract_id = "ctr_1-ABCD"
 group_id    = "12345"
 host_names  = ["jg_security_configuration.com"]
}

resource "akamai_appsec_security_policy" "jg-second-security-policy" {
  config_id              = data.akamai_appsec_configuration.jg_tf_appsec_config.id
  security_policy_name   = "jg-second-policy"
  security_policy_prefix = "abc2"
}
