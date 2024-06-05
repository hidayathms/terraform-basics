# Declaring an empty variable
# variable "sample" {} 

# Declaring a variable with a default value
variable "batch" {
    default = "batch56"
}

# Printing a variable with outputs
output "batch-op" {
    value = var.batch
}

# When enclose a variable in Quotes and when to use $ notation for a variable ???
# Whenever your variable is enclosed in a set of strings or in between a sentence, then we to enslose them in strings and with bash notation.

output "batch_number" {
    value = "Currrent Batch is ${var.batch}"
}

variable "numerival" {
    default = 100
}

output "numerical_op" {
    value = var.numerival
}

# Declaring a list variable !!!!  A Key with multiple values is referred as List. 

variable "example_list" {
    default = [
        "DevOps" ,   
        "AWS_Cloud", 
        false,       
        "Manoj",     
        56           
    ]
}

# Printing a List Variable
output "example_list_op" {
    value = "Welcome To ${var.example_list[0]} with ${var.example_list[1]} Training and this our batch ${var.example_list[4]} and training by ${var.example_list[3]}"
}


# Declaring a Map Variable 
variable "training_map" {
    default = {
        batch       = "b56" 
        mode        = "Online"
        training    = "DevOpsWithAWS"
    }
}

# Printing a Map Variable
output "training_map_op" {
    value = "${var.training_map["training"]} has great scope of opportunities and this is complete ${var.training_map["mode"]} and this is our batch ${var.training_map["batch"]}"
}





### In realitly, we write the code very generic and values would be from the external file based on the environment.
### We can declare variables in a variable file and that woyld be picked up by TF and the variables file should always ending with *.tfvars.check "

### terraform.tfvars is the default file that would be picked. 

variable "city" {} 

output "city_name" {
    value = var.city 
}

variable "state" {} 

output "state_name" {
    value = var.state 
}

variable "country" {} 

output "country_name" {
    value = var.country 
}

variable "environment" {}

output "environment_name" {
    value = "Name of the environment is ${var.environment}"
}


# Example of the usage of Shell Varaible

# You can supply the value of the SHELL Variable from Command Line using export
# export TF_VAR_varName=value

variable "course" {}

output "course_op" {
    value   = var.course
}