provider "aws" {
  region = var.region
}

# Get existing security group
data "aws_security_group" "existing_sg" {
  name = var.security_group_name
}

resource "aws_instance" "devops_ec2" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [data.aws_security_group.existing_sg.id]

  tags = {
    Name = "DevOps-Terraform-Instance"
  }
}