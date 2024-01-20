module "mongodb" {
  source                              = "terraform-aws-modules/ec2-instance/aws"
  name                                = "${local.ec2_name}-mongodb"
  instance_type                       = "t3.micro"
  ami                                 = data.aws_ami.centos.id
  vpc_security_group_ids              = [data.aws_ssm_parameter.mongodb_sg_id.value]
  subnet_id                           = local.database_subnet_id
  create_spot_instance                = true
  spot_type                           = "persistent"
  spot_instance_interruption_behavior = "stop"

  tags = merge(
    var.common_tags,
    {
      Name      = "${local.ec2_name}-mongodb"
    },
    {
      Component = "mongodb"
    }
  )
}

module "redis" {
  source                              = "terraform-aws-modules/ec2-instance/aws"
  name                                = "${local.ec2_name}-redis"
  instance_type                       = "t3.micro"
  ami                                 = data.aws_ami.centos.id
  vpc_security_group_ids              = [data.aws_ssm_parameter.redis_sg_id.value]
  subnet_id                           = local.database_subnet_id
  create_spot_instance                = true
  spot_type                           = "persistent"
  spot_instance_interruption_behavior = "stop"

  tags = merge(
    var.common_tags,
    {
      Name      = "${local.ec2_name}-redis"
    },
    {
      Component = "redis"
    }
  )
}

module "rabbitmq" {
  source                              = "terraform-aws-modules/ec2-instance/aws"
  name                                = "${local.ec2_name}-rabbitmq"
  instance_type                       = "t3.micro"
  ami                                 = data.aws_ami.centos.id
  vpc_security_group_ids              = [data.aws_ssm_parameter.rabbitmq_sg_id.value]
  subnet_id                           = local.database_subnet_id
  create_spot_instance                = true
  spot_type                           = "persistent"
  spot_instance_interruption_behavior = "stop"

  tags = merge(
    var.common_tags,
    {
      Name      = "${local.ec2_name}-rabbitmq"
    },
    {
      Component = "rabbitmq"
    }
  )
}

module "mysql" {
  source                              = "terraform-aws-modules/ec2-instance/aws"
  name                                = "${local.ec2_name}-mysql"
  instance_type                       = "t3.micro"
  ami                                 = data.aws_ami.centos.id
  vpc_security_group_ids              = [data.aws_ssm_parameter.mysql_sg_id.value]
  subnet_id                           = local.database_subnet_id
  create_spot_instance                = true
  spot_type                           = "persistent"
  spot_instance_interruption_behavior = "stop"

  tags = merge(
    var.common_tags,
    {
      Name      = "${local.ec2_name}-mysql"
    },
    {
      Component = "mysql"
    }
  )
}

module "catalogue" {
  source                              = "terraform-aws-modules/ec2-instance/aws"
  name                                = "${local.ec2_name}-catalogue"
  instance_type                       = "t3.micro"
  ami                                 = data.aws_ami.centos.id
  vpc_security_group_ids              = [data.aws_ssm_parameter.catalogue_sg_id.value]
  subnet_id                           = local.private_subnet_id
  create_spot_instance                = true
  spot_type                           = "persistent"
  spot_instance_interruption_behavior = "stop"

  tags = merge(
    var.common_tags,
    {
      Name      = "${local.ec2_name}-catalogue"
    },
    {
      Component = "catalogue"
    }
  )
}

module "user" {
  source                              = "terraform-aws-modules/ec2-instance/aws"
  name                                = "${local.ec2_name}-user"
  instance_type                       = "t3.micro"
  ami                                 = data.aws_ami.centos.id
  vpc_security_group_ids              = [data.aws_ssm_parameter.user_sg_id.value]
  subnet_id                           = local.private_subnet_id
  create_spot_instance                = true
  spot_type                           = "persistent"
  spot_instance_interruption_behavior = "stop"

  tags = merge(
    var.common_tags,
    {
      Name      = "${local.ec2_name}-user"
    },
    {
      Component = "user"
    }
  )
}

module "cart" {
  source                              = "terraform-aws-modules/ec2-instance/aws"
  name                                = "${local.ec2_name}-cart"
  instance_type                       = "t3.micro"
  ami                                 = data.aws_ami.centos.id
  vpc_security_group_ids              = [data.aws_ssm_parameter.cart_sg_id.value]
  subnet_id                           = local.private_subnet_id
  create_spot_instance                = true
  spot_type                           = "persistent"
  spot_instance_interruption_behavior = "stop"

  tags = merge(
    var.common_tags,
    {
      Name      = "${local.ec2_name}-cart"
    },
    {
      Component = "cart"
    }
  )
}

module "shipping" {
  source                              = "terraform-aws-modules/ec2-instance/aws"
  name                                = "${local.ec2_name}-shipping"
  instance_type                       = "t3.micro"
  ami                                 = data.aws_ami.centos.id
  vpc_security_group_ids              = [data.aws_ssm_parameter.shipping_sg_id.value]
  subnet_id                           = local.private_subnet_id
  create_spot_instance                = true
  spot_type                           = "persistent"
  spot_instance_interruption_behavior = "stop"

  tags = merge(
    var.common_tags,
    {
      Name      = "${local.ec2_name}-shipping"
    },
    {
      Component = "shipping"
    }
  )
}

module "payment" {
  source                              = "terraform-aws-modules/ec2-instance/aws"
  name                                = "${local.ec2_name}-payment"
  instance_type                       = "t3.micro"
  ami                                 = data.aws_ami.centos.id
  vpc_security_group_ids              = [data.aws_ssm_parameter.payment_sg_id.value]
  subnet_id                           = local.private_subnet_id
  create_spot_instance                = true
  spot_type                           = "persistent"
  spot_instance_interruption_behavior = "stop"

  tags = merge(
    var.common_tags,
    {
      Name      = "${local.ec2_name}-payment"
    },
    {
      Component = "payment"
    }
  )
}

module "web" {
  source                              = "terraform-aws-modules/ec2-instance/aws"
  name                                = "${local.ec2_name}-web"
  instance_type                       = "t3.micro"
  ami                                 = data.aws_ami.centos.id
  vpc_security_group_ids              = [data.aws_ssm_parameter.web_sg_id.value]
  subnet_id                           = local.public_subnet_id
  create_spot_instance                = true
  spot_type                           = "persistent"
  spot_instance_interruption_behavior = "stop"

  tags = merge(
    var.common_tags,
    {
      Name      = "${local.ec2_name}-web"
    },
    {
      Component = "web"
    }
  )
}