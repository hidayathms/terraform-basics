## how to create security group

resource "aws_security_group" "allows_tls" {
  name                = "batch56_allow_tls"
  description         = "batch56 allow SSH inbound traffic and outbound traffic"

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
    tags = {
        Name ="allow_tls"
    }
}

# Step 1 : Declare the input that you need to consume as variable
output "sgid" {
    value = aws_security_group.allows_tls.id
  
}