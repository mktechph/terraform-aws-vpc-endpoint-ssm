resource "aws_vpc_endpoint" "ssm_endpoint" {
  vpc_id            = var.vpc_id
  service_name      = "com.amazonaws.ap-southeast-1.ssm"
  vpc_endpoint_type = "Interface"

  subnet_ids         = var.ssm_endpoint_subnet_id
  security_group_ids = var.sg_ssm_endpoint

  private_dns_enabled = true

  tags = var.endpoint_tags
}

resource "aws_vpc_endpoint" "ssm_messages_endpoint" {
  vpc_id            = var.vpc_id
  service_name      = "com.amazonaws.ap-southeast-1.ssmmessages"
  vpc_endpoint_type = "Interface"

  subnet_ids         = var.ssm_messages_subnet_id
  security_group_ids = var.sg_ssm_messages

  private_dns_enabled = true

  tags = var.endpoint_tags
}

resource "aws_vpc_endpoint" "ec2_messages_endpoint" {
  vpc_id            = var.vpc_id
  service_name      = "com.amazonaws.ap-southeast-1.ec2messages"
  vpc_endpoint_type = "Interface"

  subnet_ids         = var.ec2_messages_subnet_id
  security_group_ids = var.sg_ec2_messages

  private_dns_enabled = true

  tags = var.endpoint_tags
}