###cloud vars

variable "ssh_public_key" {
  type    = string
  default = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBqd5l6qVQqMjrguU2n2EUNIVL0At1OPmVGBkesqcghd nikita@Sword-15-A11UE"
}

variable "cloud_id" {
  description = "ID облака Yandex Cloud"
  type        = string
}

variable "folder_id" {
  description = "ID папки Yandex Cloud"
  type        = string
}
