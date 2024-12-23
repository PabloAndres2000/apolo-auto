module "client_gateway" {
  source = "../modules/app"
  environment = "qa"
  replicas = 2
}
