# Vulnerable Terraform file with memory limit issue
resource "null_resource" "example_memory_limit" {
  provisioner "local-exec" {
    command = <<-EOF
      #!/bin/bash
      export JAVA_OPTS="-Xmx2048m"
    EOF
  }
}

# Privileged execution
resource "null_resource" "example_privileged_execution" {
  provisioner "local-exec" {
    command = <<-EOF
      sudo su -c "echo Hello"
    EOF
  }
}
