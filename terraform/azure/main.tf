provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg_counter" {
  name     = "${var.prefix}-counter"
  location = "${var.location}"
}

resource "azurerm_container_group" "cg_counter" {
  name                = "${var.prefix}-counter"
  location            = "${var.location}"
  resource_group_name = "${var.prefix}-counter"
  ip_address_type     = "public"
  dns_name_label      = "${var.prefix}-dns"
  os_type             = "linux"

  container {
    name   = "counter-strike"
    image  = "cs16ds/server:latest"
    cpu    = "${var.cpu}"
    memory = "${var.ram}"

    ports {
      port     = 26900
      protocol = "UDP"
    }
    ports {
      port     = 27020
      protocol = "UDP"
    }
    ports {
      port     = 27015
      protocol = "UDP"
    }
  }

  tags = {
    environment = "gaming"
  }
}
