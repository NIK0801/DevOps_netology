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
    platform_id    = standard-v3
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
    platform_id    = standard-v3
  }
}

metadata = {
  serial-port-enable = 1
  ssh-keys           = "ubuntu:${var.vms_ssh_root_key}"
}