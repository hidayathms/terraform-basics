resource "aws_instance" "app" {
  ami                          = "ami-0f75a13ad2e340a58"
  instance_type                = "t2.micro"
  vpc_security_group_ids        = [var.sg]

  tags = {
    Name = "Ec2-From-Modules"
}

# # Declaring the provisioner within the resource!
# #Demo on local Provisioner
#  provisioner "local-exec" {    
#     command = "echo ${self.private_ip} >> local_private_ips.txt"  
# }

# #Demo on remote Provisioner
provisioner "remote-exec" {    
    inline = [      
        "puppet apply",      
        "consul join ${aws_instance.web.private_ip}",    
        ]  
}
}

# Step 3 : Declare the input that you need to consume as variable
variable "sg" {}

output "public_ip"{
    value =aws_instance.app.public_ip
}

