nginx_external_port = {
    default = 3000
    dev = 3000
    qa  = 4000
    prod = 81
}
nginx_external_port_2 = {
    default = 3001
    dev = 3001
    qa  = 4001
    prod = 82
}
nginx_external_port_3 = {
    default = 3002
    dev = 3002
    qa  = 4002
    prod = 83
}

grafana_external_port = {
    default = 4000
    dev = 4000
    qa  = 4001
    prod = 3000
}

redis_external_port = {
    dev = 6380
    qa  = 6379
    prod = 6379
}

postgre_external_port = {
    dev = 5432
    qa  = 5432
    prod = 5432
}
