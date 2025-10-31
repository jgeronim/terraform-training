resource "akamai_dns_record" "jgeronim_record_type_cname" {
  count      = length(local.app_hostnames)
  zone       = "nobodycaresworkharder.me"
  name       = replace(local.app_hostnames[count.index], ".nobodycaresworkharder.me", "")
  recordtype = "CNAME"
  ttl        = 1800
  target = [
    akamai_edge_hostname.jg_edge_hostname.edge_hostname
  ]
}
