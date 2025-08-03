module "null-resources" {
  source = "./null-res-module"
}

module "resource-count" {
  source = "./resource-count"
  input = module.null-resources.resources
}