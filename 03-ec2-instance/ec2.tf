resource "aws_instance" "app" {
  ami               = "ami-0f75a13ad2e340a58"
  instance_type     = "t2.micro"

  tags = {
    Name = "DevOps-with-AWS-Labinstance"
  }
}



# AMI_ID="ami-072983368f2a6eab5" Not the correct approach
# SecurityGroup_ID="sg-014143c52beef6877"