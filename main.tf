resource "aws_vpc_endpoint" "ssm_endpoint" {
  vpc_id            = var.vpc_id
  service_name      = "com.amazonaws.ap-southeast-1.ssm"
  vpc_endpoint_type = "Interface"

  subnet_ids = var.ssm_endpoint_subnet_id
  #security_group_ids = [
  #  aws_security_group.sg1.id,
  #]
  tags = var.endpoint_tags
}

resource "aws_vpc_endpoint" "ssm_messages_endpoint" {
  vpc_id            = var.vpc_id
  service_name      = "com.amazonaws.ap-southeast-1.ssmmessages"
  vpc_endpoint_type = "Interface"

  subnet_ids = var.ssm_messages_subnet_id
  #security_group_ids = [
  #  aws_security_group.sg1.id,
  #]
  tags = var.endpoint_tags
}

resource "aws_vpc_endpoint" "ec2_messages_endpoint" {
  vpc_id            = var.vpc_id
  service_name      = "com.amazonaws.ap-southeast-1.ec2messages"
  vpc_endpoint_type = "Interface"

  subnet_ids = var.ec2_messages_subnet_id
  #security_group_ids = [
  #  aws_security_group.sg1.id,
  #]
  tags = var.endpoint_tags
}