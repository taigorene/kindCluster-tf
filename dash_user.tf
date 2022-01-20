resource "time_sleep" "wait_k8dash" {
   depends_on = [
     helm_release.k8dash
   ]
   create_duration = "10s"
 }

resource "kubernetes_service_account" "sa" {
  metadata {
    name = var.kubernetes_sa
    namespace = var.k8dash_namespace
  }
  secret {
    name = "${var.kubernetes_sa}"
  }
  depends_on = [
    time_sleep.wait_k8dash
  ]
}

data "kubernetes_secret" "sa" {
  metadata {
    name = kubernetes_service_account.sa.default_secret_name
    namespace = var.k8dash_namespace
  }
}

output "sa_token" {
  sensitive = true
  value = lookup(data.kubernetes_secret.sa.data, "token")
}

resource "local_file" "dash_token" {
    content     = lookup(data.kubernetes_secret.sa.data, "token")
    filename = "${path.module}/dash_token"
}