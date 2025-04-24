# Output for subnet ID
output "subnet_id" {
  description = "ID of the subnet"
  value       = aws_subnet.main_subnet.id
}

# Output for security group ID
output "security_group_id" {
  description = "ID of the security group"
  value       = aws_security_group.allow_ssh.id
}