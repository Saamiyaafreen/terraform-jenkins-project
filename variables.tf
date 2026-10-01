variable "aws_region" {
  type    = string
  default = "ap-south-1" # Change if your S3 bucket is in a different region
}

variable "vpc_name" {
  type    = string
  default = "DevOps-Project-VPC-Webhook-Test"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "subnet_cidr" {
  type    = string
  default = "10.0.1.0/24"
}
