resource "digitalocean_kubernetes_cluster" "kubernetes_cluster" {
  name    = var.env_name
  region  = var.kubernetes_region
  version = var.kubernetes_version

  node_pool {
    name       = "${var.env_name}-worker-pool"
    size       = var.node_pool.size
    auto_scale = true
    min_nodes  = var.node_pool.min_nodes
    max_nodes  = var.node_pool.max_nodes
  }
}

resource "local_file" "kubeconfig" {
  filename = "${var.output_path}/kubeconfig"
  content = digitalocean_kubernetes_cluster.kubernetes_cluster.kube_config[0].raw_config
}
