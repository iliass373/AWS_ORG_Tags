###################################
##### Add in aws_organization_organization
###################################

resource "aws_organizations_organization" "my_hpa" {
   feature_set = "ALL"
   aws_service_access_principals = [
          "cloudtrail.amazonaws.com",
          "health.amazonaws.com",
          "ram.amazonaws.com",
          "securityhub.amazonaws.com",
          "sso.amazonaws.com"
        ]
   enabled_policy_types = [
     "TAG_POLICY",
      "SERVICE_CONTROL_POLICY"
   ]
}