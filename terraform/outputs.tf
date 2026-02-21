output "public_ip" {
  description = "Public IP of EC2"
  value       = aws_instance.devops_ec2.public_ip
}

output "instance_id" {
  description = "Instance ID"
  value       = aws_instance.devops_ec2.id
}