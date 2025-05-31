provider "aws" {
  region     = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_instance" "example" {
  ami           = "ami-0c02fb55956c7d316" # Change to your region's AMI
  instance_type = "t2.micro"
  key_name      = "my-key"               # Pre-existing key pair

  tags = {
    Name = "jenkins-ec2"
  }
}

variable "aws_access_key" {}
variable "aws_secret_key" {}
