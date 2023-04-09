###################################
#### Create Tag Policies
###################################
# EC2 
resource "aws_organizations_policy" "EC2_tag_policy" {
  name = "EC2_tag_policy"
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

# RDS
resource "aws_organizations_policy" "RDS_tag_policy" {
  name = "RDS_tag_policy"
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
                    "rds:cluster-endpoint",
                    "rds:cluster-pg",
                    "rds:db-proxy",
                    "rds:db-proxy-endpoint",
                    "rds:es",
                    "rds:og",
                    "rds:pg",
                    "rds:ri",
                    "rds:secgrp",
                    "rds:subgrp",
                    "rds:target-group"
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
                    "rds:cluster-endpoint",
                    "rds:cluster-pg",
                    "rds:db-proxy",
                    "rds:db-proxy-endpoint",
                    "rds:es",
                    "rds:og",
                    "rds:pg",
                    "rds:ri",
                    "rds:secgrp",
                    "rds:subgrp",
                    "rds:target-group"
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
                    "rds:cluster-endpoint",
                    "rds:cluster-pg",
                    "rds:db-proxy",
                    "rds:db-proxy-endpoint",
                    "rds:es",
                    "rds:og",
                    "rds:pg",
                    "rds:ri",
                    "rds:secgrp",
                    "rds:subgrp",
                    "rds:target-group"
                    ]   
                }
            }
        }
    }
    CONTENT
}




