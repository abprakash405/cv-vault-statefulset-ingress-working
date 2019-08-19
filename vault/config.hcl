storage "consul" {
  address = "localhost:8500"
  path    = "vault/"
  scheme  = "http"
  tls_skip_verify = 1
}

listener "tcp" {
 address     = "0.0.0.0:8200"
 tls_disable = 1
}

ui = true

#api_addr="http://localhost:8200"
#cluster_addr="http://localhost:8201"
