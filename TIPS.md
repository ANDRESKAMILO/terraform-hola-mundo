# 🧠 Tips prácticos para trabajar con Terraform

Este documento reúne consejos útiles para trabajar de forma segura, limpia y eficiente con proyectos de Terraform, especialmente en entornos locales como CMD o VS Code.

---

## 🔚 Cómo salir de la terminal o cerrar sesión

Si ya ejecutaste comandos como `terraform apply` o `terraform destroy` y el proceso terminó:

- En **VS Code**: haz clic en el icono 🗑️ de la terminal para cerrarla.
- En **CMD** o **PowerShell**: escribe el siguiente comando:

```bash
exit
```
---

🔁 Reiniciar una terminal limpia
Si algo quedó “pegado” o mal configurado, puedes reiniciar la terminal:

- En VS Code: menú → Terminal > Nueva terminal

- Cierra la anterior con el 🗑️

Esto te asegura una sesión limpia para evitar errores por variables de entorno anteriores o procesos interrumpidos.

---

🧹 Limpieza manual del entorno
Para borrar los archivos que genera Terraform en tu entorno local:

```bash
terraform destroy -auto-approve
rm -rf .terraform terraform.tfstate*
```
Esto destruye todos los recursos y elimina archivos temporales del backend.

---

🔐 Seguridad
- Nunca subas tus archivos .tfvars ni tus credenciales a GitHub

- Agrega .gitignore con:
```gitignore
*.tfvars
*.tfstate
*.tfstate.*
.terraform
```

---


