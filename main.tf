resource "aci_rest" "mgmtConnectivityPrefs" {
  dn         = "uni/fabric/connectivityPrefs"
  class_name = "mgmtConnectivityPrefs"
  content = {
    interfacePref = var.interface_preference
  }
}
