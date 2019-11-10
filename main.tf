// main.tf

// This is an AWS provider block
provider "aws" {
    region = "us-west-2"
}

// This is an AWS resource block that creates an EC2 instance on AWS
resource "aws_instance" "instance_one" {
  ami           = "ami-0a85857bfc5345c38"
  instance_type = "t2.micro"
  subnet_id     = var.subnet_id

  // Tag the instance with some metadata
  tags = {
    Name = "Terraform Module 1 Lab 1"
    User = "lab-user-sontivr"
  }
}

