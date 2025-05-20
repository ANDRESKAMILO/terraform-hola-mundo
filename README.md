# 🌱 Hola Mundo con Terraform

Este proyecto es una práctica básica para aprender a usar Terraform en un entorno local, sin necesidad de conectarse a servicios en la nube. Se utiliza el proveedor `random` para generar un nombre aleatorio del tipo `"calm-lizard"` o `"playful-panda"`.

Ideal como primer paso para explorar automatización con infraestructura como código (IaC) y preparar el camino hacia proyectos más grandes.

---

## ⚙️ Requisitos previos

- [Terraform](https://developer.hashicorp.com/terraform/downloads) instalado (versión recomendada: `>=1.1.0`)
- Tener `terraform.exe` en tu `PATH` (ver instrucciones en [TIPS.md](./TIPS.md))
- VS Code o terminal de Windows (CMD o PowerShell)

---

## 📁 Estructura del proyecto

```plaintext
terraform-hola-mundo/
├── main.tf         # Código principal de Terraform
├── .gitignore      # Ignora archivos locales como estados
├── README.md       # Este documento
└── TIPS.md         # Consejos de uso seguro y buenas prácticas
```

---

🚀 Paso a paso para ejecutar
1. Clonar o crear el proyecto
Puedes copiar los archivos o clonarlos desde tu repositorio.

2. Inicializar Terraform
Abre una terminal dentro de la carpeta y ejecuta:
```bash
terraform init
```
Esto descargará el proveedor random.

3. Aplicar cambios y generar un nombre aleatorio
```bash
terraform apply
```
Cuando se te pregunte, escribe:
```bash
yes
```
Verás una salida como esta:
```makefile
Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

Outputs:
nombre_generado = "fuzzy-leopard"
```

---

🔁 Volver a ejecutar
Para destruir el recurso anterior y generar uno nuevo:
```bash
terraform destroy -auto-approve
terraform apply
```

---

🧼 Cierre y limpieza
Si deseas dejar tu entorno limpio:
```bash
terraform destroy -auto-approve
rm -rf .terraform terraform.tfstate*
```

---

## 📎 Recursos útiles

- 👉  [TIPS.md](/TIPS.md): Cómo cancelar, salir de la terminal y evitar errores comunes

- 🧪 Puedes crear otros recursos random_* para seguir practicando (random_string, random_integer, etc.)

---

## 🧠 ¿Qué aprendiste?
Cómo usar Terraform con un proveedor simple

El flujo básico: init → apply → destroy

Cómo estructurar un proyecto reproducible

Cómo manejar salidas (output)

---

