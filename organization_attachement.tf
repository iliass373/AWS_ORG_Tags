###################################
#### Attach tag policies to accounts
###################################

resource "aws_organizations_policy_attachment" "tag_policy_ec2_attachement" {
  policy_id = aws_organizations_policy.rds_machine_tagging.id
  target_id = aws_organizations_account.account.id  
}

###################################
#### Attach Service Control Policy to accounts
###################################

resource "aws_organizations_policy_attachment" "scp_ec2_attachement" {
  policy_id = aws_organizations_policy.Department.id
  target_id = aws_organizations_account.account.id
}