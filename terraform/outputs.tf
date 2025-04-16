output "public_ip" {
  value = module.instance_cpanel_aws.public_ip
}

output "private_ip" {
  value = module.instance_cpanel_aws.private_ip
}