output "property_name_output" {
  value       = data.akamai_property.jg_property.name
  description = "This is the name of the Akamai Property"
}

output "property_id_output" {
  value       = data.akamai_property.jg_property.id
  description = "This is the ID of the Akamai Property"
}

/*
output "my-property-hostnames" {
  value = data.akamai_property_hostnames.my-property-hostnames
}

output "my_products" {
  value = data.akamai_property_products.my_products
}
*/
