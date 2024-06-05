variable "location" {
    type = string
  
}
variable "stage" {
    type = string
  
}
resource "azurerm_service_plan" "service-webapp-01" {
    name = "${var.stage}-service-plan01"
    location = var.location
    os_type = "Linux"
    sku_name = "B1"
    resource_group_name = "${var.stage}-WebApps"  
}
resource "azurerm_app_service" "app-service-01" {
    location = var.location
    app_service_plan_id = azurerm_service_plan.service-webapp-01.id
    resource_group_name = "${var.stage}-WebApps"
    name = "${var.stage}-web-app-01"
 

}