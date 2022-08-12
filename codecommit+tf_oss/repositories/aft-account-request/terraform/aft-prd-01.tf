module "aft-prd-01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {

    AccountEmail = "<NEW-ACCOUNT-EMAIL>"
    AccountName  = "aft-prd-01"

    # Syntax for top-level OU
    ManagedOrganizationalUnit = "AFT"

    SSOUserEmail     = "<NEW-ACCOUNT-SSO-EMAIL>"
    SSOUserFirstName = "aft-prd-01"
    SSOUserLastName  = "account"
  }

  account_tags = {
    "ABC:Environment" = "Prod"
  }

  change_management_parameters = {
    change_requested_by = "Edgar Costa"
    change_reason       = "Production ready account with EKS Blueprints"
  }

  account_customizations_name = "aft-prd-01-customizations"
}
