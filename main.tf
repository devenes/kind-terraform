resource "kind_cluster" "cluster" {
  name           = var.cluster_name
  node_image     = var.node_image
  wait_for_ready = true

  # Specify the kubeconfig path
  kubeconfig_path = var.kubeconfig_path

  kind_config {
    kind                      = "Cluster"
    api_version               = var.kind_api_version
    containerd_config_patches = var.containerd_config_patches

    node {
      # Create a control-plane node
      role = "control-plane"

      kubeadm_config_patches = var.kubeadm_config_patches

      extra_port_mappings {
        container_port = 80
        host_port      = 80
      }
      extra_port_mappings {
        container_port = 443
        host_port      = 443
      }
    }

    node {
      # Create a worker node
      role = "worker"
    }
  }
}
