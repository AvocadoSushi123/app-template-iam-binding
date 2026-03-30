resource "google_service_account_iam_binding" "workload_identity_user" {
   service_account_id = var.service_account_id
   role               = "roles/iam.workloadIdentityUser"
   members = [
     "principalSet://iam.googleapis.com/${var.wif_pool}/attribute.workflow_principal/${var.github_repo}:push:refs/heads/main",
     "principalSet://iam.googleapis.com/${var.wif_pool}/attribute.workflow_principal/${var.github_repo}:workflow_dispatch:refs/heads
      /main",
      "principalSet://iam.googleapis.com/${var.github_repo}:pull_request"
  ]
}
