module "project" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 10.1"

  name                = "prj-${var.environment}-${var.name}"
  random_project_id   = true
  org_id              = var.org_id
  billing_account     = var.billing_account
  folder_id           = var.folder_id
  activate_apis       = []
  auto_create_network = false
}