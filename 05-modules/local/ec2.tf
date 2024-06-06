resource "aws_instance" "web" {
    # ami                          = "ami-0f75a13ad2e340a58"
  ami                          = "ami-0f75a13ad2e340a58"
  instance_type                = "t2.micro"
}

output "public_ip"{
    value =aws_instance.app.public_ip
}
