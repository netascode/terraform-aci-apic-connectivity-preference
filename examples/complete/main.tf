module "aci_apic_connectivity_preference" {
  source  = "netascode/apic-connectivity-preference/aci"
  version = ">= 0.0.1"

  interface_preference = "ooband"
}
