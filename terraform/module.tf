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

resource "google_project_iam_member" "viewer_role" {
  project = var.project_id
  role    = "roles/viewer"
  member  = "user:${var.user_email}"
}
