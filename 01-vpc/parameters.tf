resource "aws_ssm_parameter" "vpc_id" {
    name = "/${var.project_name}/${var.environment}/vpc_id" #starting with '/' is a fully qualified
    type = "String" #AWS notation
    value = module.vpc.vpc_id # it should be exposed in output 
}

# 4th plan in 01-vpc

# ["id1","id2"] terraform format of list
# id1,id2 --> AWS SSM format of list

resource "aws_ssm_parameter" "public_subnet_ids" {
    name = "/${var.project_name}/${var.environment}/public_subnet_ids" #starting with '/' is a fully qualified
    type = "StringList" #AWS notation
    value = join("," ,module.vpc.public_subnet_ids) # it should be exposed in output 
}

resource "aws_ssm_parameter" "private_subnet_ids" {
    name = "/${var.project_name}/${var.environment}/private_subnet_ids" #starting with '/' is a fully qualified
    type = "StringList" #AWS notation
    value = join("," ,module.vpc.private_subnet_ids) # it should be exposed in output 
}
# exposed value from output.tf of ../terraform-aws-vpc and catch here
resource "aws_ssm_parameter" "db_subnet_group_name" {
    name = "/${var.project_name}/${var.environment}/db_subnet_group_name" #starting with '/' is a fully qualified
    type = "String" #AWS notation
    value = module.vpc.database_subnet_group_name 
}