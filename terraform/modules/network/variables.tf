# modules/network/variables.tf

# CIDR block for the VPC
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

# CIDR block for the subnet
variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}

# Region for creating resources (useful in multi-region scenarios)
variable "region" {
  description = "AWS region to deploy the resources"
  type        = string
  default     = "us-east-1"
}

# VPC tags for easy identification
variable "vpc_tags" {
  description = "Tags for the VPC"
  type        = map(string)
  default     = {
    Name = "my-vpc"
  }
}

# Subnet tags for easy identification
variable "subnet_tags" {
  description = "Tags for the subnet"
  type        = map(string)
  default     = {
    Name = "my-subnet"
  }
}

# Security group tags
variable "security_group_tags" {
  description = "Tags for the security group"
  type        = map(string)
  default     = {
    Name = "ssh-access"
  }
}