# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "aft" {

  source = "github.com/aws-ia/terraform-aws-control_tower_account_factory"

  # Required Vars
  ct_management_account_id    = "<MANAGEMENT-ACCOUNT-ID>"
  log_archive_account_id      = "<MANAGEMENT-ACCOUNT-ID>"
  audit_account_id            = "<MANAGEMENT-ACCOUNT-ID>"
  aft_management_account_id   = "<MANAGEMENT-ACCOUNT-ID>"
  ct_home_region              = "us-east-1"
  tf_backend_secondary_region = "us-east-2"

  # updating version
  terraform_version = "1.2.6"

}