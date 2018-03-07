module "finrem-backend" {
  source = "git@github.com:contino/moj-module-webapp?ref=master"
  product = "${var.product}-backend"
  location = "${var.location}"
  env = "${var.env}"
  ilbIp = "${var.ilbIp}"
  subscription = "${var.subscription}"
  is_frontend  = false

  app_settings = {
    MANAGEMENT_SECURITY_ENABLED = "${var.management_security_enabled}"
  }
}
