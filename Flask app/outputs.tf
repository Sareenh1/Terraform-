output "instance_ip" {
  value = aws_instance.flask_app.public_ip
}