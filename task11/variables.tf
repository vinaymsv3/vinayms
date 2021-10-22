variable "project" {}

variable "credentials_file" {}

variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-a"
}

variable "bucket_name" {
  description = "The name of the Google Cloud Storage bucket. Must be globally unique."
  default     = ""
}

variable "storage_class" {
  default = "STANDARD"
}

