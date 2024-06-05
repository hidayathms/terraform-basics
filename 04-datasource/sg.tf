## how to create security group

resource "aws_security_group" "allow_tls" {
  name                = "b56_allow_tls"
  description         = "Allow SSH inbound traffic and outbound traffic"

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
