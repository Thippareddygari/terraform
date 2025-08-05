module "null-resources" {
  source = "./null-res-module"
}


module "res-count" {
  source = "./res-count-module"
  input =module.null_resources
}