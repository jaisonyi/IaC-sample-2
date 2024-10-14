# Vulnerable Terraform file with memory limit issue
resource "aws_instance" "example" {
  instance_type = "t2.micro"
  user_data = <<-EOF
              #!/bin/bash
              export JAVA_OPTS="-Xmx2048m"
              EOF
}

# Privileged execution
resource "aws_iam_role" "example" {
  name = "example-role"
  assume_role_policy = <<-EOF
                      {
                        "Version": "2012-10-17",
                        "Statement": [
                          {
                            "Effect": "Allow",
                            "Principal": {
                              "Service": "ec2.amazonaws.com"
                            },
                            "Action": "sts:AssumeRole"
                          }
                        ]
                      }
                      EOF
}
