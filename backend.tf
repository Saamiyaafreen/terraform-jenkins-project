terraform {
  backend "s3" {
    bucket = "devops-terraform-state-sa-05"
    key    = "terraform/terraform.tfstate"
    region = "ap-south-1"
  }
}
