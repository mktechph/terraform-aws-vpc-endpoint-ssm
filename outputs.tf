output "output_ssm_endpoint_id" {
  value = aws_vpc_endpoint.ssm_endpoint.id
}

output "output_ssm_messages_endpoint_id" {
  value = aws_vpc_endpoint.ssm_messages_endpoint.id
}

output "output_ssm_messages_endpoint_id" {
  value = aws_vpc_endpoint.ec2_messages_endpoint.id
}