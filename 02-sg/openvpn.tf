module "vpn" {
  source         = "../../terraform-aws-sg"
  project_name   = var.project_name
  environment    = var.environment
  sg_description = "SG for vpn"
  vpc_id         = data.aws_vpc.default.id
  sg_name        = "vpn"
  # sg_ingress_rules = var.mongodb_sg_ingress_rules
}

resource "aws_security_group_rule" "vpn" {
  security_group_id = module.mongodb.sg_id
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["77.64.254.132/32"]
}

resource "aws_security_group_rule" "mongodb_vpn" {
  source_security_group_id = module.vpn.sg_id
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  security_group_id        = module.mongodb.sg_id
}
