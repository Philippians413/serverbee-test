provider "digitalocean" {
  token = var.do_token
}

provider "helm" {
  kubernetes {
    config_path = local_file.kubeconfig.filename
  }
}
