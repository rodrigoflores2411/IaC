resource "docker_container" "proxy" {
    name = "nginx_proxy"
    image = "nginx:stable-perl"

    ports{
        external = 8080
        internal = 80
    }

    networks_advance{
        name = docker_network.lab.name
    }

    volumes{
        host_path = "${path.module}/../host_volumes/nginx_conf"
        container_path = "/etc/nginx/conf.d"
        read_only = false
    }
        host_path ="${path.module}/../host_volumes/nginx_conf"
        container_path = "/etc/nginx/conf.d"
        read_only = false
    
}