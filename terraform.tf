# main.tf
provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "ExampleInstance"
  }
}
# variables.tf
variable "aws_region" {
  description = "The AWS region to create resources in"
  default     = "us-west-2"
}

variable "ami_id" {
  description = "The ID of the AMI to use for the instance"
  default     = "ami-04b70fa74e45c3917"
}

variable "instance_type" {
  description = "The type of instance to create"
  default     = "t2.micro"
}
# outputs.tf
output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.example.id
}

output "public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.example.public_ip
}
  Than use the following command 
1- terraform init 
2- terrasorm plan 
3- terraform apply
4- terraform destroy 
