module "aci_apic_connectivity_preference" {
  source = "netascode/apic-connectivity-preference/aci"

  interface_preference = "ooband"
}
