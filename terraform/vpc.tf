provider "aws" {
  region = "eu-west-2"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "MyVPC"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "IGW"
  }
}

resource "aws_subnet" "PrivateSubnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "eu-west-2a"
  tags = {
    Name = "Private"
  }
}


resource "aws_subnet" "PublicSubnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "eu-west-2b"
  map_public_ip_on_launch = true
  tags = {
    Name = "Public"
  }
}

resource "aws_route_table" "Routes" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}

resource "aws_route_table" "No_Routes" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_gateway.id
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.PublicSubnet.id
  route_table_id = aws_route_table.Routes.id
}

resource "aws_route_table_association" "b" {
#  gateway_id     = aws_nat_gateway.nat_gateway.id
  subnet_id      = aws_subnet.PrivateSubnet.id
  route_table_id = aws_route_table.No_Routes.id
}


resource "aws_eip" "nat_gateway" {
  vpc = true
}

resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = aws_eip.nat_gateway.id
  subnet_id = aws_subnet.PrivateSubnet.id
  tags = {
    "Name" = "DummyNatGateway"
  }
}


resource "aws_security_group" "ssh" {
  name        = "allow_ssh"
  vpc_id = aws_vpc.main.id

  ingress {
    description      = "SSH"
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
}


resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "TF_key" {
    key_name = "TF_key"
    public_key = tls_private_key.rsa.public_key_openssh
}

resource "aws_key_pair" "key_key" {
    key_name = "key_key"
    public_key = tls_private_key.rsa.public_key_openssh
}


resource "local_file" "tf_key" {
    content = tls_private_key.rsa.private_key_pem
    filename = "tfkey"
}


resource "local_file" "key_key" {
    content = tls_private_key.rsa.private_key_pem
    filename = "key_key"
}

resource "aws_instance" "DBServer" {
  ami                    = "ami-0f540e9f488cfa27d"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.ssh.id]
  key_name = "TF_key"
  tags = {
    Name = "DBServer"

  }
  subnet_id = aws_subnet.PrivateSubnet.id
  depends_on = [aws_security_group.ssh]
}


resource "aws_instance" "WebServer" {
  ami                    = "ami-0f540e9f488cfa27d"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.ssh.id]
  key_name = "TF_key"
  tags = {
    Name = "WebServer"

  }
  subnet_id = aws_subnet.PublicSubnet.id
}
