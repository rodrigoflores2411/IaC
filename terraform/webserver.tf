resource "docker_container" "app1"{
    name= "app1"
    image="hashicorp/http-echo:1.0"

command={
    "-listen", "5678"
    "-text", "Grupo 6"
}
networks_advanced{
    name= docker_network.labnet.name
}
}
resource "docker_network" "labnet"{
    name="labnet"
}
