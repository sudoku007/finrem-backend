module "finrem-backend" {
  source = "git@github.com:hmcts/finrem-backend.git?ref=master"
  product = "${var.product}-backend"
  location = "${var.location}"
  env = "${var.env}"
  ilbIp = "${var.ilbIp}"

  app_settings = {
    MANAGEMENT_SECURITY_ENABLED = "${var.management_security_enabled}"
  }
}
