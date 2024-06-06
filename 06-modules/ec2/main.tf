resource "aws_instance" "app" {
    # ami                          = "ami-0f75a13ad2e340a58"
  ami                          = "ami-0f75a13ad2e340a58"
  instance_type                = "t2.micro"
  vpc_security_group_ids        = [var.sg]

  tags = {
    Name = "Ec2-From-Modules"
}
}

# Step 1 : Declare the input that you need to consume as variable
variable "sg" {}

# To share the info it has to declared as output first.
output "public_ip"{
    value =aws_instance.app.public_ip
}

