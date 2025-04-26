resource "random_password" "mysql_root_password" {
  length           = 16
  special          = true
  override_special = "_%=+!"
}

resource "random_password" "mysql_user_password" {
  length           = 16
  special          = true
  override_special = "_%=+!"
}

resource "random_password" "random_string" {
  length           = 16
  special          = false
}