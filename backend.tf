# terraform {
#   backend "s3" {
#     bucket         = "okey-ec2-bucket"
#     key            = "terraform.tfstate"
#     region         = "us-east-1"
#     dynamodb_table = "remote-terraform-state-lock"
#   }
# }
