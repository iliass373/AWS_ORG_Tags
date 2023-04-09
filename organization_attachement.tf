###################################
#### Attach tag policies to accounts
###################################

resource "aws_organizations_policy_attachment" "tag_policy_ec2_attachement" {
  policy_id = aws_organizations_policy.EC2_tag_policy.id
  target_id = aws_organizations_account.account.id  
}

resource "aws_organizations_policy_attachment" "tag_policy_rds_attachement" {
  policy_id = aws_organizations_policy.RDS_tag_policy.id
  target_id = aws_organizations_account.account.id  
}

###################################
#### Attach Service Control Policy to accounts
###################################

resource "aws_organizations_policy_attachment" "scp_ec2_attachement" {
  policy_id = aws_organizations_policy.RDS_tag_policy.id
  target_id = aws_organizations_account.account.id
}