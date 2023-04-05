###################################
#### Attach tag policies to accounts
###################################

resource "aws_organizations_policy_attachment" "restrict_regions_on_root" {
  policy_id = aws_organizations_policy.rds_machine_tagging.id
  target_id = aws_organizations_account.account_test.id  # TODO : Change this account_test with yours
}
