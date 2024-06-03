# 3rd apply
resource "aws_ssm_parameter" "db_sg_id" {
    name = "/${var.project_name}/${var.environment}/db_sg_id" #starting with '/' is a fully qualified
    type = "String" #AWS notation
    value = module.db.sg_id # it should be exposed in output 
}


resource "aws_ssm_parameter" "backend_sg_id" {
    name = "/${var.project_name}/${var.environment}/backend_sg_id" #starting with '/' is a fully qualified
    type = "String" #AWS notation
    value = module.backend.sg_id # it should be exposed in output 
}

resource "aws_ssm_parameter" "frontend_sb_id" {
    name = "/${var.project_name}/${var.environment}/frontend_sg_id" #starting with '/' is a fully qualified
    type = "String" #AWS notation
    value = module.frontend.sg_id # it should be exposed in output 
}
# 4th apply

resource "aws_ssm_parameter" "bastion_sb_id" {
    name = "/${var.project_name}/${var.environment}/bastion_sg_id" #starting with '/' is a fully qualified
    type = "String" #AWS notation
    value = module.bastion.sg_id # it should be exposed in output 
}

resource "aws_ssm_parameter" "ansible_sb_id" {
    name = "/${var.project_name}/${var.environment}/ansible_sg_id" #starting with '/' is a fully qualified
    type = "String" #AWS notation
    value = module.ansible.sg_id # it should be exposed in output 
}

