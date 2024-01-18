module "ec2_instance" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  name                   = "${local.ec2_name}-mongodb"
  instance_type          = "t2.micro"
  ami                    = data.aws_ami.centos.id
  vpc_security_group_ids = [data.aws_ssm_parameter.mongodb_sg_id.value]
  subnet_id              = local.database_subnet_id

  tags = merge(
    var.common_tags,
    {
      Name = "${local.ec2_name}-mongodb"
      Component = "mongodb"
    }
  )
}
