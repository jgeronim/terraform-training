resource "akamai_appsec_configuration" "my_security_configuration" {
 name        = "JG security configuration"
 description = "This is my first security configuration."
 contract_id = "1-1NC95D"
 group_id    = "19293"
 host_names  = ["jg_property.example.com"]
}
/*
resource "akamai_appsec_security_policy" "jg-security-policy" {
  config_id              = akamai_appsec_configuration.my_security_configuration.config_id
  security_policy_name   = "jg-policy"
  security_policy_prefix = "abc1"
}
*/
/*
resource "akamai_appsec_configuration" "my_second_security_configuration" {
 name        = "JG second security configuration"
 description = "This is my second security configuration."
 contract_id = "1-1NC95D"
 group_id    = "19293"
 host_names  = ["jg_security_configuration.com"]
}

resource "akamai_appsec_security_policy" "jg-second-security-policy" {
  config_id              = akamai_appsec_configuration.my_second_security_configuration.id
  security_policy_name   = "jg-second-policy"
  security_policy_prefix = "abc2"
}
*/
