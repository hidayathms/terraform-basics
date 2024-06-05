resource "aws_instance" "app" {
    # ami                          = "ami-0f75a13ad2e340a58"
  ami                          = data.aws_ami.ami.id
  instance_type                = "t2.micro"
  vpc_security_group_ids       = [aws_security_group.allows_tls.id]

  tags = {
    Name                      = "AWS-Cloud-Labinstance"
  }
}

