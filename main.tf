provider "aws" {
  region = "us-east-1"  # change if you're using a different region
}

resource "aws_s3_bucket" "my_project_bucket" {
  bucket = "my-project-bucket-${random_id.bucket_suffix.hex}"
  acl    = "private"

  tags = {
    Name        = "MyProjectBucket"
    Environment = "Dev"
  }
}

resource "random_id" "bucket_suffix" {
  byte_length = 4
}
