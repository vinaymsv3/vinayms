terraform {
  backend "gcs" {
    bucket      = "mybucketforterraformsrebootcamp"
    prefix      = "terraform/state"
    credentials = "creds/amplified-asset-328305-2c5208bad943.json"
  }
}
