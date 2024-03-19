# resource "aws_instance" "my-first-server" {
#   #provider = aws.audit-account
#   ami             = "ami-0d7a109bf30624c99"
#   instance_type   = "t2.micro"
#    #vpc_security_group_ids = [aws_security_group.launch-wizard-4.id]
#    #depends_on = [ aws_security_group.main ]
  
# tags = {
#   Name = "MyFirstServer"
# } 
  
# }
# ##adding security gruops
# data "aws_security_group" "launch-wizard-4" {
#     id = "sg-0c122b0c5633d843a"
  
# }

# # resource "aws_security_group" "launch-wizard-1" {
# #    name   = var.launch-wizard-1
# #     vpc_id = "vpc-0b04728665cd9d1bb"
# # }

# resource "aws_network_interface_sg_attachment" "sg_attachment" {
#   security_group_id    = "${data.aws_security_group.launch-wizard-4.id}"
#   network_interface_id = "${aws_instance.my-first-server.primary_network_interface_id}"
# }

# # ##adding security gruops
# # resource "aws_security_group" "main" {
# #    name   = var.sg_name
# #     vpc_id = "vpc-0b04728665cd9d1bb"

# #    dynamic "ingress" {
# #        for_each = var.ingress_rules

# #        content {
# #            description = ingress.value.description
# #            from_port   = ingress.value.from_port   
# #            to_port     = ingress.value.to_port     
# #            protocol    = "tcp"
# #            cidr_blocks = ["0.0.0.0/0"]
# #        }
# #    }
# ## ##For SG
# # variable "sg_name" {
# #   description = "My ec2 security group name"
# #   #default = okey_ec2
# # }

# variable "launch-wizard-4" {
#     description = "existing security group"
     
  
# }
# # variable "ingress_rules" {
# #   default = [{
# #        from_port   = 443
# #        to_port     = 443
# #        description = "Port 443"
# #    },
# #    {
# #        from_port   = 80
# #        to_port     = 80
# #        description = "Port 80"
# #    }]
# # }

##region
variable "region" {
    type = string
    default = "us-east-1"
description = "region"
}

##for multiple ec2 instances
# variable "key_name" {
#   default = "Ansible"
# }

variable "sec_group_name" {
  default = "Ansible Security Group"
}

variable "sec_group_description" {
  default = "Ansible Security Group - allow All Trafic to My IP"
}
variable "user_data" {
  default = "./config.sh"
}

variable "volume_size" {
  default = 8
}

variable "ip_list" {
  description = "Allowed IPs"
  type = list(string)
  default = [
    "0.0.0.0/0",
  ]
}

variable "instance_count" {
  default = "2"
}

variable "port_list" {
  description = "Allowed ports"
  type = list(number)
  default = [
    22,
    80,
    8080,
  ]
}
