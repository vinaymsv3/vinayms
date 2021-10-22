resource "google_bigquery_dataset" "dataset" {
  dataset_id                  = "test_dataset"
#  friendly_name               = "test"
  description                 = "This is a test description"
  location                    = "US"
#  default_table_expiration_ms = 3600000

  labels = {
    env = "default"
  }
}
