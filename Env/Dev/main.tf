
module "rg" {
  source      = "../../Module/RG"
  rg_name     = "rg_dev"
  rg_location = "West Europe"
  rg_tags = local.common_tags
}



