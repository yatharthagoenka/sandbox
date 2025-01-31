provider "google" {
  project = var.project_id
  region  = var.region
}

variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region"
  type        = string
  default     = "us-central1" # Default region
}

resource "google_secret_manager_secret" "secret" {
  secret_id = var.secret_id

    replication {
      auto {}
    }
}

variable "secret_id" {
  description = "The ID of the secret"
  type        = string
}
