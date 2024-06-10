resource "null_resource" "playbook" {

    # This make sures that this null_resource will only be executed post the creation of the aws_instance.app only    
    depends_on = [aws_instance.app]
    connection {
        type     = "ssh"
        user     = "centos"
        password = "DevOps321"
        host     = aws_instance.app.private_ip
    }

    provisioner "remote-exec" {
        inline = [
            "ansible-pull -U https://github.com/b56-clouddevops/ansible.git -e ENV=dev -e COMPONENT=mongodb roboshop-pull.yml"
        ]
    }
}

 
# 1. Creates Resource
# 2. Null provisioner authenticates/establishes connection to the newly created resource
# 3. Then execute tasks mentioned in the remote exec