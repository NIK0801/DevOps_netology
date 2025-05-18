###cloud vars


variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}


###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBqd5l6qVQqMjrguU2n2EUNIVL0At1OPmVGBkesqcghd"
  description = "ssh-keygen -t ed25519"
}

variable "vm_web_image_family" {
  type    = string
  default = "ubuntu-2004-lts"
}

variable "vm_web_name" {
  type    = string
  default = "netology-develop-platform-web"
}

variable "vm_web_platform_id" {
  type    = string
  default = "standard-v3"
}

variable "vm_web_cores" {
  type    = number
  default = 2
}

variable "vm_web_memory" {
  type    = number
  default = 2
}

variable "vm_web_core_fraction" {
  type    = number
  default = 20
}

variable "vm_web_preemptible" {
  type    = bool
  default = true
}


# Переменные для второй виртуальной машины (db)
variable "vm_db_image_family" {
  type        = string
  default     = "ubuntu-2004-lts"
}

variable "vm_db_name" {
  description = "Имя второй виртуальной машины (БД)"
  type        = string
  default     = "netology-develop-platform-db"
}

variable "vm_db_platform_id" {
   description= "Платформа для второй ВМ"
   type       = string
   default    = "standard-v3"
}

variable "vm_db_cores" {
   description= "Количество ядер CPU для второй ВМ"
   type       = number
   default    = 2
}

variable "vm_db_memory" {
   description= "Объем памяти (в ГБ) для второй ВМ"
   type       = number
   default    = 2
}

variable "vm_db_core_fraction" {
   description= "Fraction CPU для второй ВМ"
   type       = number
   default    = 20
}

variable "vm_db_preemptible" {
   type       = bool
   default    = true
}