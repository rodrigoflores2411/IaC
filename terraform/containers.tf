resource "docker_container" "nginx_1" {
  name  = "app1"
  image = "nginx:stable-perl"
  networks_advanced {
    name = docker_network.app_net.name
  }
  ports {
     internal = 80
     external = 3000
  }
}
resource "docker_container" "nginx_2" {
  name  = "app2"
  image = "nginx:stable-perl"
  networks_advanced {
    name = docker_network.app_net.name
  }
  ports {
     internal = 80
     external = 4000
  }
}
resource "docker_container" "nginx_3" {
  name  = "app3"
  image = "nginx:stable-perl"
  networks_advanced {
    name = docker_network.app_net.name
  }
  ports {
     internal = 80
     external = 5000
  }
}
resource "docker_container" "redis" {
  name  = "redis"
  image = "redis:latest"
  networks_advanced {
    name = docker_network.persistence_net.name
  }
}
resource "docker_container" "postgre" {
  image = "postgres:13.22-bookworm" 
  name  = "postgre"
  env = [
    "POSTGRES_PASSWORD=infra2"
  ]
  networks_advanced {
    name = docker_network.persistence_net.name
  }
} 
resource "docker_container" "grafana" {
  image = "grafana/grafana:main-ubuntu"
  name  = "grafana"
  networks_advanced {
    name = docker_network.monitor_net.id
  }
}