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
        "Devops"
        "AWS"
        true,
        "SYED",
        87
    ]
}

output "list_op" {
    value =  "Welcome to ${var.example_list[0]} with ${var.example_list[1]} trainins and this our batch ${var.example_list[4]}"
}