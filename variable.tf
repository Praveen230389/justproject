variable "region" {
  default = "us-east-1"
}

variable "ami_id" {
  default = "ami-0c02fb55956c7d316" # Amazon Linux 2 (replace if needed)
}

variable "key_name" {
  default = "your-key-name"
}

variable "private_key_path" {
  default = "~/.ssh/your-key.pem"
}

variable "access_key" {}
variable "secret_key" {}
