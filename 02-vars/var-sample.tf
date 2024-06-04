## Declaring an empty variable
# variable "sample" {}

# Declaring a variable with default value
variable "batch" {
  default = "batch56"
}

# printing a variable
output "batch-out" {
    value = var.batch
}

output "batch_number" {
value = "Current bactch is ${var.batch}"
}

variable "numerical" {
  default = 100
}

output "numerical_output" {
    value = var.numerical
}


# Declaring the list variable : A key with multiple valies if reffered as list.data 

variable "example_list" {
    default = [
        "Devops",
        "AWS_Cloud",
        true,
        "SYED",
        56
    ]
}

output "list_op" {
    value =  "Welcome to ${var.example_list[0]} and ${var.example_list[1]} training and this is batch ${var.example_list[4]}"
}

#Declaring map varialbe

variable "map_example" {
    default = {
        batch   = "b56"
        mode     = "online"
        training   ="DevOpswithAWS"
    }
}

output "sample_mapop" {
    value = "${var.map_example["training"]} has great scope of opportunity and this complete ${var.map_example["mode"]}  and this is our ${var.map_example["batch"]}"
}