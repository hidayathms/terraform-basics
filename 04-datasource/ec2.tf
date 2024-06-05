terraform import aws_security_group.b56_allow_tls sg-0f32dfce793fa31bc

resource "aws_instance" "web" {
    # ami                          = "ami-0f75a13ad2e340a58"
  ami                          = data.aws_ami.ami.id
  instance_type                = "t2.micro"
  vpc_security_group_ids       = [aws_security_group.allow_tls.id]

  tags = {
    Name                      = "DevOps-with-AWS-Labinstance"
  }
}

