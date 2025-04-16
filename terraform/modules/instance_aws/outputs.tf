#output "instance_public_ip" {
#  value       = oci_core_instance.ic_pub_vm-A.public_ip
#}

output "public_ip" {
  description = "Public ip"
  value       = aws_instance.example.public_ip
}

output "private_ip" {
  description = "Private ip"
  value       = aws_instance.example.private_ip
}
