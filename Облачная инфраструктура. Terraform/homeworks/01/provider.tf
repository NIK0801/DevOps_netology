terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {
  host = "ssh://nikita@51.250.23.141:22"
  #cert_path = "~/.docker/certs.d/51.250.23.141:22"
}