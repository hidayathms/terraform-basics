resource "aws_instance" "web" {                 # Arguments
  ami               = "ami-0f75a13ad2e340a58"
  instance_type     = "t2.micro"

  tags = {
    Name = "DevOps-with-AWS-Labinstance"
  }
}

output "private_ip_address" {                   #Atributes
  value = aws_instance.web.private_ip
}


# AMI_ID="ami-072983368f2a6eab5" Not the correct approach
# SecurityGroup_ID="sg-014143c52beef6877"