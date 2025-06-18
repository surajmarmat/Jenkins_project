provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0c55b159cbfafe1f0"  # Example: Amazon Linux 2 AMI
  instance_type = var.instance_type

  tags = {
    Name = "Jenkins-Terraform-EC2"
  }
}

