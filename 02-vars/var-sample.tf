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