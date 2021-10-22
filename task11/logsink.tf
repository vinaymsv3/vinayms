resource "google_logging_project_sink" "my-logging-sink" {
  name = "my-bigquery-sink"

  # Can export to pubsub, cloud storage, or bigquery
  destination = "bigquery.googleapis.com/projects/advance-seer-323906/datasets/${google_bigquery_dataset.dataset.dataset_id}"
#  destination = google_bigquery_dataset.dataset.dataset_id

  # Log
#  filter = "resource.type = gce_instance AND resource.labels.instance_id = \"${google_compute_instance.vm_instance.instance_id}\""
  filter = "resource.type = k8s_container OR k8s_pod"

  # Use a unique writer (creates a unique service account used for writing)
  unique_writer_identity = true
  bigquery_options {
    use_partitioned_tables = true
  }
}

resource "google_project_iam_member" "log_writer" {
    role = "roles/bigquery.dataEditor"
    member = google_logging_project_sink.my-logging-sink.writer_identity
}
