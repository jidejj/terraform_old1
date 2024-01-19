resource "null_resource" "ansible_docker" {
  provisioner "local-exec" {
    command = "sh scripts/create_ansible_docker.sh"
  }
  depends_on = [aws_instance.main]
}
