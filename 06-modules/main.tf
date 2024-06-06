# Calling backend modules

#Calls EC2 module
module "ec2" {
    source  = "./ec2"
    sg      = module.sg.sgid           #Step 2 : passing the infor that the module needs 
  
}

#Calls Secutiry Group module
module "sg" {
    source = "./sg"
  
}

output "public_ip" {
    value = module.ec2.public_ip
  
}