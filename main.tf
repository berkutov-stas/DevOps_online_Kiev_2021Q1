provider "aws" {
  region = var.region
}

resource "tls_private_key" "pkey" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "kp" {
  key_name   = var.key_name
  public_key = tls_private_key.pkey.public_key_openssh

  provisioner "local-exec" {
    command = "echo '${tls_private_key.pkey.private_key_pem}' > myKey.pem"
  }
}

resource "aws_instance" "ansible_ubuntu" {
  ami                    = "ami-05f7491af5eef733a"
  instance_type          = var.instance_type
  key_name               = aws_key_pair.kp.key_name
  vpc_security_group_ids = [aws_security_group.my_ansible.id]
}

resource "aws_instance" "webserver" {
  ami                    = "ami-05f7491af5eef733a"
  instance_type          = var.instance_type
  key_name               = aws_key_pair.kp.key_name
  vpc_security_group_ids = [aws_security_group.my_apache.id]
}

resource "aws_security_group" "my_ansible" {
  name        = "Ansible Security Group"
  description = "Security Group for Ansible"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "my_apache" {
  name        = "Apache Security Group"
  description = "Security Group for Apache"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
