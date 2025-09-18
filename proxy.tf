resource "docker_container" "proxy" {
  name  = "nginx-proxy"
  image = "nginx:stable-perl"

  ports {
    internal = 80
    external = 1000
  }

  networks_advanced {
    name = docker_network.app_net.name
  }
  networks_advanced {
    name = docker_network.monitor_net.name
  }
  networks_advanced {
    name = docker_network.persistence_net.name
  }

volumes {
  host_path      = abspath("${path.module}/files/nginx")
  container_path = "/etc/nginx/conf.d"
  read_only      = true
}
volumes {
  host_path      = abspath("${path.module}/files/web")
  container_path = "/usr/share/nginx/html"
  read_only      = true
}


  depends_on = [
    docker_container.app1,
    docker_container.app2,
    docker_container.app3,
    docker_container.grafana
  ]
}