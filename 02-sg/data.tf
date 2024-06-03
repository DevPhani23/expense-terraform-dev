# /* data "aws_ssm_parameter" "vpc_id" {
#   name = "/${var.project_name}/${var.environment}/vpc_id"
# # This will fetch the vpc_id value from aws -> ssm -> all parameters stored
# } */


data "aws_ssm_parameter" "vpc_id" {
  name = "/${var.project_name}/${var.environment}/vpc_id"
}
