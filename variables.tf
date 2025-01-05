variable "vpc_id" {
  description = "The VPC ID where the SSM Endpoint will be deployed."
  type        = string
}

variable "endpoint_tags" {
  description = "Tags for the SSM Endpoint."
  type        = map(string)
}




variable "ssm_endpoint_subnet_id" {
  description = "The Subnet ID(s) where the SSM Endpoint will be deployed."
  type        = list(string)
}

variable "ssm_messages_subnet_id" {
  description = "The Subnet ID(s) where the SSM Messages Endpoint will be deployed."
  type        = list(string)
}

variable "ec2_messages_subnet_id" {
  description = "The Subnet ID(s) where the EC2 Messages Endpoint will be deployed."
  type        = list(string)
}

variable "sg_ssm_endpoint" {
  description = "The Security Group ID(s) for the Endpoint."
  type        = list(string)
}

variable "sg_ssm_messages" {
  description = "The Security Group ID(s) for the Endpoint."
  type        = list(string)
}

variable "sg_ec2_messages" {
  description = "The Security Group ID(s) for the Endpoint."
  type        = list(string)
}
