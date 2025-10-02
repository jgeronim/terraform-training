output "jg_cp_code_id" {
  value = akamai_cp_code.jg_cp_code.id
  description = "This is the CP Code ID"
}

output "jg_edge_hostname_id" {
  value = akamai_edge_hostname.jg_edge_hostname.id
  description = "This is the Edge Hostname ID"  
}

output "jg_property_id" {
  value = akamai_property.jg_property.id
  description = "This is the Property ID"    
}