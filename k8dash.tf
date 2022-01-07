provider "helm" {
  kubernetes {
    config_path = pathexpand(var.kind_cluster_config_path)
  }
}

resource "helm_release" "k8dash" {
  name       = "kubernetes-dashboard"
  repository = "https://kubernetes.github.io/dashboard/"
  chart      = "kubernetes-dashboard"

  namespace        = var.k8dash_namespace
  create_namespace = true

  values = [
    templatefile("k8dash_values.yaml" , {kubernetes_sa = "${var.kubernetes_sa}"})
    ]

  depends_on = [null_resource.wait_for_ingress_nginx]
}

# resource "kubernetes_service_account" "sa" {
#   metadata {
#     name = "sa"
#   }
#   depends_on = [
#     helm_release.k8dash
#   ]
# }
# 
# data "kubernetes_secret" "sa" {
#   metadata {
#     name = kubernetes_service_account.sa.default_secret_name
#   }
# }
# 
# output "sa_token" {
#   sensitive = true
#   value = lookup(data.kubernetes_secret.sa.data, "token")
# }