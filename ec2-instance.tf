resource "aws_key_pair" "key" {
  key_name   = "jenkins-server"
  public_key = var.jenkins_public_key
}

data "template_file" "user_data_neo_server" {
  template = file("scripts/neo-server-script.sh")
}

resource "aws_instance" "neo-server" {
  ami                    = "ami-0a8e758f5e873d1c1"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public-subnet-1.id
  vpc_security_group_ids = [aws_security_group.neo-security-group.id]
  key_name               = aws_key_pair.key.key_name
  user_data              = data.template_file.user_data_neo_server.rendered
}

# aws_security_group
resource "aws_security_group" "neo-security-group" {
  ingress {
    cidr_blocks = [var.internet_cidr_block]
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    description = "neo-server-nfs-rule"

  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  vpc_id = aws_vpc.production-vpc.id

}
