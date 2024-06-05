output "private_ip_address" {
  value                       = aws_instance.web.private_ip
}

output "instance_arn" {
  value                      = aws_instance.web.arn
}