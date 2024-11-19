resource "aws_instance" "flask_app" {
  ami           = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2 AMI
  instance_type = "t2.medium"
  subnet_id     = aws_subnet.public_subnet.id
  security_groups = [aws_security_group.web_sg.name]

  key_name = "your_key_pair"

  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y",
      "sudo yum install -y python3 git",
      "curl -O https://bootstrap.pypa.io/get-pip.py",
      "python3 get-pip.py --user",
      "pip3 install flask",
      "pip3 install -r requirements.txt",
      "FLASK_APP=app.py flask run --host=0.0.0.0"
    ]

    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file("~/.ssh/your_private_key.pem")
      host        = aws_instance.flask_app.public_ip
    }
  }

  tags = {
    Name = "FlaskApp"
  }
}
