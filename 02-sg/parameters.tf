resource "aws_ssm_parameter" "web_sg_id" {
    name = "/${var.project_name}/${var.environment}/web_sg_id"
    type = "String"
    value = module.web.id
}

resource "aws_ssm_parameter" "mongodb_sg_id" {
    name = "/${var.project_name}/${var.environment}/mongodb_sg_id"
    type = "String"
    value = module.mongodb.id
}

resource "aws_ssm_parameter" "catalogue_sg_id" {
    name = "/${var.project_name}/${var.environment}/catalogue_sg_id"
    type = "String"
    value = module.catalogue.id
}

resource "aws_ssm_parameter" "user_sg_id" {
    name = "/${var.project_name}/${var.environment}/user_sg_id"
    type = "String"
    value = module.user.id
}

resource "aws_ssm_parameter" "redis_sg_id" {
    name = "/${var.project_name}/${var.environment}/redis_sg_id"
    type = "String"
    value = module.redis.id
}

resource "aws_ssm_parameter" "cart_sg_id" {
    name = "/${var.project_name}/${var.environment}/cart_sg_id"
    type = "String"
    value = module.cart.id
}

resource "aws_ssm_parameter" "mysql_sg_id" {
    name = "/${var.project_name}/${var.environment}/mysql_sg_id"
    type = "String"
    value = module.mysql.id
}

resource "aws_ssm_parameter" "shipping_sg_id" {
    name = "/${var.project_name}/${var.environment}/shipping_sg_id"
    type = "String"
    value = module.shipping.id
}

resource "aws_ssm_parameter" "rabbitmq_sg_id" {
    name = "/${var.project_name}/${var.environment}/rabbitmq_sg_id"
    type = "String"
    value = module.rabbitmq.id
}

resource "aws_ssm_parameter" "payment_sg_id" {
    name = "/${var.project_name}/${var.environment}/payment_sg_id"
    type = "String"
    value = module.payment.id
}