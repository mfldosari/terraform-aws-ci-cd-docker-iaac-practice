# modules/compute/variables.tf

# The AMI ID for the EC2 instance
variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  #default     = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2, change as needed
}

# Instance type (e.g., t2.micro)
variable "instance_type" {
  description = "EC2 Instance type"
  type        = string
  #default     = "t2.micro"
}

# The SSH key pair name to use for the EC2 instance
variable "key_name" {
  description = "The SSH Key pair name"
  type        = string
  default     = "my-key"
}

# Subnet ID for the EC2 instance
variable "subnet_id" {
  description = "Subnet ID for EC2 instance"
  type        = string
}

# Security group ID for the EC2 instance
variable "security_group_id" {
  description = "Security group ID for EC2 instance"
  type        = string
}
