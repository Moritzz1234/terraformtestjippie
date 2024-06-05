module "ressourcegroups" {
    source = "./modules/ressourcegroups"
    stage = "DEV"
    location = var.region
}
module "app-service" {
    source = "./modules/app-service"
    stage = "DEV"
    location = var.region
}