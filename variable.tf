# ##For SG
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

variable "enabled"{
  type = bool
  default = false
}

variable "backend-dynamodb-name" {
  type = string
  default = "remote-terraform-state-lock"
}

variable "backend-s3-name" {
  type = string
  default = "okey-ec2-bucket"
}