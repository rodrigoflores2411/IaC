
Integrantes del Grupo 6
Rodrigo Flores Alvarez

Julio Cedamanos Guevara

Bryam Gutierrez Rubio

Luis Ibañez Herrera

Descripción
Este proyecto implementa una arquitectura que despliega los siguientes servicios:

3 aplicaciones basadas en Nginx (app1, app2, app3)

Una base de datos PostgreSQL

Un sistema de caché Redis

Un servicio de monitorización con Grafana

Estructura del Proyecto
text
├── containers.tf          # Definición de contenedores (apps, grafana, redis, postgres)
├── main.tf               # Configuración principal y provider
├── nginx.tf              # Configuración específica para apps Nginx
├── redes.tf              # Definición de redes Docker
├── variables.tf          # Declaración de variables
├── terraform.tfvars      # Valores de variables (credenciales, puertos, etc.)
├── terraform.tfstate     # Estado de infraestructura (NO editar)
└── terraform.tfstate.d/  # Estados parciales
Arquitectura
Los servicios se agrupan en redes Docker específicas:

app_net: Conexión de aplicaciones Nginx

persistence_net: Conexión de Redis y PostgreSQL

monitor_net: Conexión de Grafana y monitorización

Flujo de Comunicación
Usuarios → Aplicaciones Nginx

Aplicaciones → Redis/PostgreSQL 
Aplicaciones → Grafana 

Requisitos Previos
Terraform instalado

Docker instalado y en ejecución

Acceso a internet para descargar imágenes de Docker Hub

Despliegue
Inicializar Terraform:

bash
terraform init
Revisar el plan de ejecución:

bash
terraform plan
Aplicar la configuración:

bash
terraform apply
Verificación
Acceder a los servicios:

Aplicaciones Nginx: puertos configurados en terraform.tfvars

Grafana: puerto 3000 (por defecto)

Verificar contenedores en ejecución:

bash
docker ps
Verificar redes Docker creadas:

bash
docker network ls
