resource "aws_instance" "app" {
  ami               = "ami-072983368f2a6eab5"
  instance_type     = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}



# AMI_ID="ami-072983368f2a6eab5" Not the correct approach
# SecurityGroup_ID="sg-014143c52beef6877"