resource "aws_instance" "demo_instance" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [aws_security_group.demo_sg.id]

  associate_public_ip_address = true
  key_name                    = aws_key_pair.example.key_name  

  user_data = file(var.user_data)

  tags = {
    Name = "demo-instance"
  }
}

resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "example" {
  key_name   = "example-key"
  public_key = tls_private_key.example.public_key_openssh
}

resource "aws_security_group" "demo_sg" {
  vpc_id = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "demo-sg"
  }
}

output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.demo_instance.id
}

output "security_group_id" {
  description = "The ID of the security group"
  value       = aws_security_group.demo_sg.id
}

output "key_name" {
  description = "The name of the key pair"
  value       = aws_key_pair.example.key_name
}