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

# when to user varialbes in quotes and $ notations
# Whenever your variable is enclosed in a set of string or between a sentance, then we have to enclose them in strings and with bash notation.data 

output " batch_number" {
value = "Current bactch is var.batch"
}