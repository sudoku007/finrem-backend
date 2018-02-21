provider "vault" {
  //  # It is strongly recommended to configure this provider through the
  //  # environment variables described above, so that each user can have
  //  # separate credentials set in the environment.
  //  #
  //  # This will default to using $VAULT_ADDR
  //  # But can be set explicitly
  address = "https://vault.reform.hmcts.net:6200"
}

module "fr-backend" {
  source = "git@github.com:hmcts/fr-backend.git?ref=master"
  product = "${var.product}-backend"
  location = "${var.location}"
  env = "${var.env}"
  ilbIp = "${var.ilbIp}"

  app_settings = {
    MANAGEMENT_SECURITY_ENABLED = "${var.management_security_enabled}"
  }
}
