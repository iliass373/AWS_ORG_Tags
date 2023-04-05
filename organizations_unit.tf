##########################
#### Organization OU
#########################

resource "aws_organizations_organizational_unit" "ou_1" {
    name = "OU_1"
    parent_id = aws_organizations_organization.my_org.id
} 