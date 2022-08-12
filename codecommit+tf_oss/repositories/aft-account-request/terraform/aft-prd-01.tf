module "<NEW-ACCOUNT-FIRST-NAME>" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {

    AccountEmail = "<NEW-ACCOUNT-EMAIL>"
    AccountName  = "<NEW-ACCOUNT-NAME>"

    # Syntax for top-level OU
    ManagedOrganizationalUnit = "AFT"

    SSOUserEmail     = "<NEW-ACCOUNT-SSO-EMAIL>"
    SSOUserFirstName = "<NEW-ACCOUNT-FIRST-NAME>"
    SSOUserLastName  = "<NEW-ACCOUNT-LAST-NAME>"
  }

  account_tags = {
    "ABC:Environment" = "Prod"
  }

  change_management_parameters = {
    change_requested_by = "<REQUESTER>"
    change_reason       = "Production ready account with EKS Blueprints"
  }

  account_customizations_name = "<NEW-ACCOUNT-CUSTOMIZATIONS-FILE>"
}
