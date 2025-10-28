locals{

    property_hostnames = [
        for h in data.akamai_property_hostnames.my-property-hostnames.hostnames : h.cname_from
    ]

}