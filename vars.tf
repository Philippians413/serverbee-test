variable "do_token" {
  type = string
}

variable "env_name" {
  type    = string
  default = "development"
}

variable "kubernetes_region" {
  type = string
}

variable "kubernetes_version" {
  type = string
}

variable "node_pool" {
  type = object({
    min_nodes = string
    max_nodes = string
    size      = string
  })
}

variable "output_path" {
  type = string
}
