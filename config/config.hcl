disable_mlock = true
controller {
  name = "demo-controller-1"
  description = "A controller for a demo!"
  database {
    url = "postgresql://postgres:postgres@localhost:5432/postgres?sslmode=disable"
  }
}
worker {
  name = "demo-worker-1"
  description = "A default worker created demonstration"
  address = "127.0.0.1"
}
listener "tcp" {
  address = "127.0.0.1"
  purpose = "api"
  tls_disable = true 
}
listener "tcp" {
  address = "127.0.0.1"
  purpose = "cluster"
  tls_disable   = true 
}
listener "tcp" {
  address       = "127.0.0.1"
  purpose       = "proxy"
  tls_disable   = true 
}
kms "aead" {
  purpose = "root"
  aead_type = "aes-gcm"
  key = "uC8zAQ3sLJ9o0ZlH5lWIgxNZrNn0FiFqYj4802VKLKQ="
  key_id = "global_root"
}
kms "aead" {
  purpose = "worker-auth"
  aead_type = "aes-gcm"
  key = "cOQ9fiszFoxu/c20HbxRQ5E9dyDM6PqMY1GwqVLihsI="
  key_id = "global_worker-auth"
}
kms "aead" {
  purpose = "recovery"
  aead_type = "aes-gcm"
  key = "nIRSASgoP91KmaEcg/EAaM4iAkksyB+Lkes0gzrLIRM="
  key_id = "global_recovery"
}
