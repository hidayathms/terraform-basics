## Declaring an empty variable
variable "sample" {}

# Declaring a variable with default value
variable "batch" {
  default = "batch56"
}

# printing a variable
output "batch-out" {
    value = var.batch
}

output "batch_number" {
value = "Current bactch is var.batch"
}

variable "numerical" {
  default = 100
}

output "numerical_output" {
    value = var.numerical
}
