# Kubernetes en AWS con Terraform

Este proyecto configura un clúster de Kubernetes (EKS) en AWS utilizando Terraform. Se despliega una aplicación **Django** que se comunica con **RabbitMQ** para la mensajería asíncrona y se gestiona a través de **Kubernetes**.

## Estructura del Proyecto

- **`terraform/`**: Configuración de infraestructura en AWS (EKS, VPC, RDS, RabbitMQ).
- **`kubernetes/`**: Archivos YAML para recursos de Kubernetes (deployments, services, ingress).
- **`client_gateway/`**: Aplicación Django que interactúa con RabbitMQ.
- **`docker-compose.local.yml`**: Configuración de contenedores para ejecutar RabbitMQ y Client Gateway en local.

## Requisitos

- AWS CLI
- Terraform
- Docker
- kubectl

## Pasos para Configuración

### 1. **Configurar Terraform**

Configura las variables en `terraform/production/variables.tf`.

### 2. **Desplegar Infraestructura con Terraform**

Ejecuta los comandos para crear la infraestructura en AWS:

```bash
terraform init
terraform apply
```
