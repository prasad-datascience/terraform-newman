terraform {
  backend "s3" {
    bucket = "dummy-newman"
    key    = "terraform-newman/terraform.tfstate"
    region = "ap-south-1"
  }
}