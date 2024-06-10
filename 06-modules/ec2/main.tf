resource "aws_instance" "app" {
  ami                          = "ami-072983368f2a6eab5"
  instance_type                = "t2.micro"
  vpc_security_group_ids        = [var.sg]

  tags = {
    Name = "Ec2-From-Modules"
}
 provisioner "local-exec" {    
    command = "echo ${self.private_ip} >> /hoem/centos/local_private_ips.txt"  
}
}

# Step 3 : Declare the input that you need to consume as variable
variable "sg" {}

output "public_ip"{
    value =aws_instance.app.public_ip
}

