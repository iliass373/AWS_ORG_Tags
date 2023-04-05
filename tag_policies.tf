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




