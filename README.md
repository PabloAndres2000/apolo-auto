# Kubernetes en AWS con Terraform

Este proyecto configura un clúster de Kubernetes (EKS) en AWS usando Terraform y define los recursos de Kubernetes en archivos YAML.

## Estructura

- `terraform/`: Configuración del clúster EKS.
- `kubernetes/`: Recursos de Kubernetes (Deployments, Services, Ingress).

## Pasos

1. Configura variables en `terraform/variables.tf`.
2. Ejecuta Terraform:
   ```bash
   terraform init
   terraform apply
   ```
