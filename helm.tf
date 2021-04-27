resource "helm_release" "apache" {
  depends_on = [digitalocean_kubernetes_cluster.kubernetes_cluster]
  name       = "apache"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "apache"
  version    = "8.5.2"
}
