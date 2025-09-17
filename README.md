#Hola
Mi grupo es el 6
    -Rodrigo Flores Alvarez
    -Julio Cedamanos Guevara
    -Bryam Gutierrez Rubio
    -Luis Ibañez Herrera
Se despliegan los siguientes servicios:

3 aplicaciones basadas en Nginx (app1, app2, app3).

Una base de datos PostgreSQL.

Un sistema de caché Redis.

Un servicio de monitorización con Grafana.

Estructura del proyecto:

├── containers.tf      # Definición de los contenedores (apps, grafana, redis, postgres)
├── main.tf            # Configuración principal y provider
├── nginx.tf           # Configuración específica para las apps Nginx
├── redes.tf           # Definición de las redes de Docker (app_net, persistence_net, monitor_net)
├── variables.tf       # Declaración de variables
├── terraform.tfvars   # Valores de las variables (credenciales, puertos, etc.)
├── terraform.tfstate  # Estado actual de la infraestructura (NO editar manualmente)
└── terraform.tfstate.d/ # Directorio con estados parciales

-Arquitectura:

Los servicios se agrupan en distintas redes de Docker:

app_net → Conexión de las aplicaciones Nginx.

persistence_net → Conexión de Redis y PostgreSQL.

monitor_net → Conexión de Grafana y monitorización.

Flujo de comunicación:

Usuarios → Nginx apps

Apps → Redis/Postgres (persistencia y caché)

Apps → Grafana (exposición de métricas)

Grafana → Monitorización interna
-Requisitos previos:
Terraform
Docker
 instalado y corriendo
Acceso a internet para descargar imágenes de Docker Hub

-Despliegue:
Inicializar Terraform:
````````````
terraform init
````````````
Revisar el plan de ejecución:
````````````
terraform plan
````````````
Aplicar la configuración:
````````````
terraform apply 
````````````

