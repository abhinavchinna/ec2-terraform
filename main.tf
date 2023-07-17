provider "aws" {
  region                   = "us-east-1"
  shared_config_files      = [".aws\\config"]
  shared_credentials_files = [".aws\\credentials"]
}

resource "aws_instance" "ec2_instance" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  tags = {
    "Name" = "Terraform hands-on"
  }
}