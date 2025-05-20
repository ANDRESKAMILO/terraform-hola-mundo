terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

provider "random" {}

resource "random_pet" "mascota" {
  length    = 2
  separator = "-"
}

output "nombre_generado" {
  value = random_pet.mascota.id
}
