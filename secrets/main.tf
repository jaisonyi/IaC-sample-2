provider "aws" {
  region     = "us-west-2"
  access_key = "AKIA1234567890"  # Hardcoded access key
  secret_key = "1234567890abcdef"  # Hardcoded secret key
}

resource "aws_instance" "example" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance"
  }

  user_data = <<-EOF
              #!/bin/bash
              echo "AWS_ACCESS_KEY_ID=AKIA1234567890" >> /etc/environment
              echo "AWS_SECRET_ACCESS_KEY=1234567890abcdef" >> /etc/environment
              EOF
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "my-example-bucket"
  acl    = "private"

  tags = {
    Name        = "example-bucket"
    Environment = "Production"
  }
}
