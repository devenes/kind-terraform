output "cluster_name" {
  value = kind_cluster.cluster.name
}

output "kubeconfig_path" {
  value = kind_cluster.cluster.kubeconfig_path
}

output "client_certificate" {
  value = kind_cluster.cluster.client_certificate
}

output "client_key" {
  value = kind_cluster.cluster.client_key
}

output "cluster_ca_certificate" {
  value = kind_cluster.cluster.cluster_ca_certificate
}

output "endpoint" {
  value = kind_cluster.cluster.endpoint
}

output "kubeconfig" {
  value = kind_cluster.cluster.kubeconfig
}

output "id" {
  value = kind_cluster.cluster.id
}

output "kubectl_nodes" {
  value = "You can use this command to get nodes: kubectl --kubeconfig=${kind_cluster.cluster.kubeconfig_path} get nodes -o wide"
}

output "kubectl_pods" {
  value = "You can use this command to get pods: kubectl --kubeconfig=${kind_cluster.cluster.kubeconfig_path} get pods -A"
}
