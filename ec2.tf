resource "aws_instance" "web" {
  ami                         = "ami-0f1fd62b9701507de" # Amazon Linux 3 AMI
  instance_type               = "t3.micro"
  subnet_id                   = aws_subnet.public[0].id
  vpc_security_group_ids      = [aws_security_group.ec2_sg.id]
  associate_public_ip_address = true

  user_data = <<-EOF
              #!/bin/bash
              sudo yum install -y httpd
              sudo systemctl start httpd
              sudo systemctl enable httpd
              echo "Hello, World from $(hostname -f)" > /var/www/html/index.html
              EOF

  tags = {
    Name = "WebServer"
  }
}
