provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

# You can add other resources here like S3, IAM, etc., if needed

# Output block (optional, keep if you're referencing any EC2 IP or similar resource later)
# Uncomment this block only if you're still referencing EC2 somewhere
# output "instance_ip" {
#   value = aws_instance.lugx_ec2.public_ip
# }

# Variables
variable "region" {
  default = "us-east-1"
}

variable "access_key" {}
variable "secret_key" {}
