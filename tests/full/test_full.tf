terraform {
  required_providers {
    test = {
      source = "terraform.io/builtin/test"
    }

    aci = {
      source  = "netascode/aci"
      version = ">=0.2.0"
    }
  }
}

module "main" {
  source = "../.."

  interface_preference = "ooband"
}

data "aci_rest" "mgmtConnectivityPrefs" {
  dn = "uni/fabric/connectivityPrefs"

  depends_on = [module.main]
}

resource "test_assertions" "mgmtConnectivityPrefs" {
  component = "mgmtConnectivityPrefs"

  equal "interfacePref" {
    description = "interfacePref"
    got         = data.aci_rest.mgmtConnectivityPrefs.content.interfacePref
    want        = "ooband"
  }
}
