resource "aws_instance" "main_instance" {
  ami             = var.ami_instance
  instance_type   = var.instance_type
  security_groups = [aws_security_group.security_group.name]
  user_data       = file("${path.module}/scripts/install_docker.sh")
  key_name        = aws_key_pair.key_pair.key_name

  root_block_device {
    volume_size = var.volume_size
  }

  tags = {
    Name        = "${var.project_name}-${var.project_environment}-ec2",
    project     = var.project_name
    environment = var.project_environment
  }
}
