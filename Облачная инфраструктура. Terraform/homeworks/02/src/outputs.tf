output "vms_info" {
  description = "Информация о виртуальных машинах: имя, внешний IP и FQDN"
  value = {
    for instance in [
      yandex_compute_instance.platform,
      yandex_compute_instance.netology-develop-platform-db
    ] : instance.name => {
      instance_name = instance.name
      external_ip   = instance.network_interface[0].nat_ip_address
      fqdn          = "${instance.name}.example.com"
    }
  }
}