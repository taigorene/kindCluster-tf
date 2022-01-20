provider "kind" {
}

provider "kubernetes" {
  config_path = pathexpand(var.kind_cluster_config_path)
}

provider "helm" {
  kubernetes {
    config_path = pathexpand(var.kind_cluster_config_path)
  }
}

## Criar aqui a conta secundária do K8s para criação do usuário do dash
# provider "kubernetes" {
#   alias = "post_install"
# 
#   host = ""
#   cluster_ca_certificate = ""
#   token = ""
# }