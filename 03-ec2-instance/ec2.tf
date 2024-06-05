resource "aws_instance" "web" {                 # Arguments
  ami                          = "ami-0f75a13ad2e340a58"
  instance_type                = "t2.micro"
  security_groups              = [aws_security_group.allow_tls.id]

  tags = {
    Name                      = "DevOps-with-AWS-Labinstance"
  }
}

output "private_ip_address" {                   #Atributes
  value                       = aws_instance.web.private_ip
}

output "instance_arn" {                         #Atributes
  value                      = aws_instance.web.arn
}

## how to create security group

resource "aws_security_group" "allow_tls" {
  name                      = "b56_allow_tls"
  description               = "Allow SSH inbound traffic and outbound traffic"

    ingress {
    cidr_blocks       = ["0.0.0.0/0"]
    from_port         = 22
    protocol          = "tcp"
    to_port           = 22
    }
    egress {
    from_port         = 0
    to_port           = 0
    cidr_blocks       = ["0.0.0.0/0"]
    protocol          = "ALL" 
}
}

