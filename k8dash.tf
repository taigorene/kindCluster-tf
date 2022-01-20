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