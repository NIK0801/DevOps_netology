vms_resources = {
  web = {
    image_family   = "ubuntu-2004-lts"
    name           = "netology-develop-platform-vm"
    cores          = 2
    memory         = 2
    core_fraction  = 20
    hdd_size       = 10
    hdd_type       = "network-hdd"
    preemtible     = true
    platform_id    = "standard-v3"
    project_name   = "teproject"
    environment    = "prod"
  },
  db = {
    image_family   = "ubuntu-2004-lts"
    name           = "netology-develop-platform-db"
    cores          = 2
    memory         = 2
    core_fraction  = 20
    hdd_size       = 10
    hdd_type       = "network-ssd"
    preemtible     = true
    platform_id    = "standard-v3"
  }
}


project_name = "terproject"
environment  = "prod"

metadata = {
  serial-port-enable = "1"
  ssh-keys           = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBqd5l6qVQqMjrguU2n2EUNIVL0At1OPmVGBkesqcghd"
}