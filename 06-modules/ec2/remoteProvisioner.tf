# #Demo on remote Provisioner

resource "null_resource" "playbook" {
    # This depends on make sures that the null resource will only be executed post the creation of the aws_instance.app
    depends_on = [aws_instance.app]
    connection {    
        type     = "ssh"    
        user     = "centos"    
        password = "DevOps321"    
        host     = aws_instance.app.private_ip  
    }

    provisioner "remote-exec" {
        inline = [
          " curl https://gitlab.com/thecloudcareers/opensource/-/raw/master/lab-tools/ansible/install.sh | sudo bash",  
          " ansible-pull -U https://github.com/hidayathms/ansible.git -e ENV=dev -e COMPONENT=mongodb roboshop-pull.yml ",
        ] 
    }
}


# 1. Creates Resource
# 2. Null provisioner authenticates/establishes connection to the newly created resource
# 3. Then execute tasks mentioned in the remote exec