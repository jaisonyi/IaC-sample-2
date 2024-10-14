# Vulnerable Terraform configuration for Docker

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_image" "ubuntu" {
  name = "ubuntu:latest"
}

resource "docker_container" "vulnerable_container" {
  image = docker_image.ubuntu.latest
  name  = "vulnerable_container"

  env = [
    "DB_PASSWORD=12345"
  ]

  ports {
    internal = 80
    external = 8080
  }

  provisioner "local-exec" {
    command = <<-EOT
      echo "Starting container with vulnerable settings"
      docker exec ${self.name} bash -c "echo 'DB_PASSWORD=12345' >> /etc/environment"
    EOT
  }
}
