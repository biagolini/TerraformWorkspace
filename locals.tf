locals {
  env = terraform.workspace == "default" ? "dev" : terraform.workspace # Local to used to get workspace id
}