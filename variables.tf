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

variable "k8dash_namespace" {
  type        = string
  description = "O namespace onde sera criado o dashboard (Será criado se necessário)."
  default     = "kubernetes-dashboard"
}

variable "kubernetes_sa" {
  type        = string
  description = "Definição do sa para o Kubernetes Dashboard (Obrigatório)"
  default     = "kubernetes-admin"
}

variable "host_kind_pv" {
  type = string
  description = "Nome e caminho da Pasta do host que irá ser mapeada para dentro do node master do kind em `/pvs`"
  default = "tmp_k8pv/"
}