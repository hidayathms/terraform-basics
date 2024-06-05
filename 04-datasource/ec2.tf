resource "aws_instance" "web" {
    # ami                          = "ami-0f75a13ad2e340a58"
  ami                          = data.aws_ami.image.id
  instance_type                = "t2.micro"
  vpc_security_group_ids        = [aws_security_group.allow_tls.id]

  tags = {
    Name                      = "DevOps-with-AWS-Labinstance"
  }
}


data "aws_ami" "example" {
  most_recent      = true
  name_regex       = "DevOps-LabImage-Centos-8"
  owners           = ["647070675341lf"]
}

