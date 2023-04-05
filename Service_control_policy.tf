###################################
#### Create Service Control Policy
###################################

resource "aws_organizations_policy" "ec2_scp" {
  name = "ec2_scp"
  content = <<CONTENT
{
  "Version": "2012-10-17",
  "Statement": [
    
    {
      "Sid": "DenyRunInstanceWithNoEnvironmentTag",
      "Effect": "Deny",
      "Action": "ec2:RunInstances",
      "Resource": [
        "arn:aws:ec2:*:*:instance/*",
        "arn:aws:ec2:*:*:volume/*"
      ],
      "Condition": {
        "Null": {
          "aws:RequestTag/Environment": "true"
        }
      }
    },
    {
      "Sid": "DenyRunInstanceWithNoDepartmentTag",
      "Effect": "Deny",
      "Action": "ec2:RunInstances",
      "Resource": [
        "arn:aws:ec2:*:*:instance/*"
      ],
      "Condition": {
        "Null": {
          "aws:RequestTag/Department": "true"
        }
      }
    }
  ]
}
CONTENT
}

/*{
       "Sid": "DenyCreateSecretWithNoProjectTag",
      "Effect": "Deny",
      "Action": "secretsmanager:CreateSecret",
      "Resource": "*",
      "Condition": {
        "Null": {
          "aws:RequestTag/Project": "true"
        }
      }
    },
        {
      "Sid": "DenyCreateSecretWithNoCostCenterTag",
      "Effect": "Deny",
      "Action": "secretsmanager:CreateSecret",
      "Resource": "*",
      "Condition": {
        "Null": {
          "aws:RequestTag/CostCenter": "true"
        }
      }
    }, */