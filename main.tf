# Define los proveedores requeridos para este proyecto de Terraform.
terraform {
  # Especifica los proveedores necesarios y sus versiones.
  required_providers {
    # Define el proveedor "random".
    random = {
      # Especifica la fuente del proveedor (registro de HashiCorp).
      source  = "hashicorp/random"
      # Define la versión requerida del proveedor.
      version = "~> 3.0"
    }
  }
}

# Configura el proveedor "random".
provider "random" {}

# Define un recurso de tipo "random_pet" llamado "mascota".
resource "random_pet" "mascota" {
  # Especifica la longitud del nombre generado (número de palabras).
  length    = 2
  # Define el separador entre las palabras del nombre.
  separator = "-"
}

# Define un valor de salida que se mostrará después de aplicar la configuración.
output "nombre_generado" {
  # El valor de salida será el ID (el nombre generado) del recurso "random_pet.mascota".
  value = random_pet.mascota.id
}
