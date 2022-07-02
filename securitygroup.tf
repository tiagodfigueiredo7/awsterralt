resource "aws_security_group" "terrassh" {
  name        = "terrassh"
  description = "liberar acesso ssh"
  

  ingress {
    description      = "terrassh"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]

  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]

  }

  tags = {
    Name = "terrassh"
  }
}