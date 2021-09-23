module "acm" {
  source           = "../../"
  domain_name      = "*.tsi.dev-tvlk.cloud"
  hosted_zone_name = "tsi.dev-tvlk.cloud"
  certificate_name = "wildcard.tsi.dev-tvlk.cloud"
  environment      = "tetsting"
  description      = "Wildcard certificate for example.tsi.dev-tvlk.cloud"
  product_domain   = "exm"
}

