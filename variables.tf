variable "kind_cluster_name" {
  type        = string
  description = "Coloque aqui o nome do cluster."
  default     = "acmek8"
}

variable "kind_cluster_config_path" {
  type        = string
  description = "O Local onde o arquivo de configuração do cluster K8 será salvo."
  default     = "~/.kube/config"
}

variable "ingress_nginx_helm_version" {
  type        = string
  description = "A versão do Helm para o nginx ingress controller."
  default     = "4.0.6"
}

variable "ingress_nginx_namespace" {
  type        = string
  description = "O nginx ingress namespace (Será criado se necessário)."
  default     = "ingress-nginx"
}