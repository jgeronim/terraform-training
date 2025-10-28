output "property_group_output" {
  value       = data.akamai_group.jg_tf_group.id
  description = "This is the ID of the Akamai Group"
}

output "property_id_output" {
  value       = data.akamai_property.jg_property.id
  description = "This is the ID of the Akamai Property"
}

output "my_appsec_config_output" {
  value       = data.akamai_appsec_configuration.my_appsec_configuration.id
  description = "This is the ID of the Akamai AppSec Configuration"
}

/*
output "my-property-hostnames" {
  value = data.akamai_property_hostnames.my-property-hostnames
}
*/