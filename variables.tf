variable "service_account_id" {
  type        = string
  description = "The ID (usually email or full resource name) of the Service Account."
}

variable "github_repo" {
  type        = string
  description = "The GitHub repository (e.g. 'org/repo') that should have Workload Identity access."
}

variable "wif_pool" {
  type        = string
  description = "The full Workload Identity Pool name (e.g.,'projects/123456789/locations/global/workloadIdentityPools/my-pool')."
}
