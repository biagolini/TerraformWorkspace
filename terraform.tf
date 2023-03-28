terraform {
  required_version = ">= 1.4.0"
  backend "s3" {
    bucket = "your-bucket-name"
    key    = "terraform/terraform.tfstate"
    region = "us-east-1"
  }
}