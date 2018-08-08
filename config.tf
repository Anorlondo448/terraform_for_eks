###
#
# Remote State
#
terraform {
  backend "s3" {
    bucket = "anorlondo448-terraform-for-eks"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
