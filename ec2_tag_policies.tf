terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

###################################
#### Create Tag Policies
###################################

resource "aws_organizations_policy" "ec2_machine_tagging" {
  name = "ec2_machine_tagging"
  type = "TAG_POLICY"
  content = <<CONTENT
{
    "tags": {
        "Cost:Team": {
            "tag_key": {
                "@@assign": "Cost:Team"
            },
            "tag_value": {
                "@@assign": [
                    "HPA team",
                    "Data Engineer",
                    "magneto",
                    "onepiece",
                    "op",
                    "Data Analytics",
                    "foundation/sealvr/avengers",
                    "heimdallr",
                    "avengers",
                    "foundation",
                    "ae86/avengers/onepiece/magneto/guardians/thematrix/foundation/heimdallr/accounting/sealvr/sealbpm/pyramid",
                    "ae86/avengers/onepiece/magneto/supermario/guardians/thematrix/foundation/heimdallr/accounting/sealvr/sealbpm/pyramid/asgard",
                    "supermario",
                    "thematrix/foundation",
                    "ae86",
                    "asgard",
                    "realsure",
                    "foundation/pyramid",
                    "DevOps"


                ]
            },
            "enforced_for": {
                "@@assign": [
                    "ec2:instance"
                ]
            }
        },
        "Department": {

            "tag_key": {
                "@@assign": "Department"
            },
            "tag_value": {
                "@@assign": [
                    "Software",
                    "Data Analytics",
                    "datalake",
                    "Data Governance",
                    "bifrost",
                    "devops",
                    "Data Governance and Reporting"
                ]
            },
           "enforced_for": {
                "@@assign": [
                    "ec2:instance"
                ]
            }
            },
        "Environment": {
            "tag_key": {
                "@@assign": "Environment"
            },
            "tag_value": {
                "@@assign": [
                    "prod-datalake",
                    "prod",
                    "Production",
                    "datalake-dev",
                    "uat",
                    "infra-prod",
                    "dev",
                    "PROD",
                    "DEV",
                    "STG"
                ]
            },
            "enforced_for": {
                "@@assign": [
                    "ec2:instance"
                ]
            }
        }
    }
    }
    CONTENT
}

###################################
#### Attach tag policies to accounts
###################################

resource "aws_organizations_policy_attachment" "restrict_regions_on_root" {
  policy_id = aws_organizations_policy.rds_machine_tagging.id
  target_id = aws_organizations_account.account_test.id  # TODO : Change this account_test with yours
}

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