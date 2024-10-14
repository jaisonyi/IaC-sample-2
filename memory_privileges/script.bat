# Vulnerable Terraform file with memory limit issue
resource "null_resource" "example_memory_limit" {
  provisioner "local-exec" {
    command = <<-EOF
      @echo off
      set JAVA_OPTS=-Xmx2048m
    EOF
  }
}

# Privileged execution
resource "null_resource" "example_privileged_execution" {
  provisioner "local-exec" {
    command = <<-EOF
      runas /user:Administrator "cmd.exe /C echo Hello"
    EOF
  }
}
