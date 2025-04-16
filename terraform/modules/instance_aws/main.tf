provider "aws" {
  region = "sa-east-1"
}

resource "aws_instance" "example" {
  ami                    = "ami-xxxx"
  instance_type          = "t2.small"
  key_name               = "key.pem"

  subnet_id              = "subnet-xxx"
  associate_public_ip_address = true
#  vpc_security_group_ids = ["sg-xxx", "sg-xxx"]

  tags = {
    Name = "CPANEL_NEW"
  }

  user_data = file("${path.module}/scripts/startup-script.sh")

  credit_specification {
    cpu_credits = "standard"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = 2
    http_tokens                 = "required"
  }

  private_dns_name_options {
    hostname_type                   = "ip-name"
    enable_resource_name_dns_a_record = false
    enable_resource_name_dns_aaaa_record = false
  }
}
