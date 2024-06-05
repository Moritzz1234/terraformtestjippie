variable "location" {
    type = string
  
}
variable "stage" {
    type = string
  
}



resource "azurerm_resource_group" "rg-webapps" {
    name = "${upper(var.stage)}-WebApps"
    location = var.location
    tags = {
      "STAGE" = var.stage
    }
  
}

resource "azurerm_resource_group" "rg-storage" {
    name = "${upper(var.stage)}-storage"
    location = var.location
    tags = {
      "STAGE" = var.stage
    }
  
}