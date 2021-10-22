resource "google_container_cluster" "gke-cluster" {
  name     = "my-cluster"
  network  = google_compute_network.vpc_network.name
  location = var.region

  remove_default_node_pool = true
  initial_node_count       = 1

  provisioner "local-exec" {
    command = "/bin/bash bootstrap.sh"
    #    command = "echo This is test echo to check if the provisioner working"
  }
}

resource "google_container_node_pool" "primary_nodes" {
  name       = "${google_container_cluster.gke-cluster.name}-node-pool"
  location   = var.region
  cluster    = google_container_cluster.gke-cluster.name
  node_count = 1

  node_config {
    #    preemptible  = true
    machine_type = "e2-micro"
  }
}
