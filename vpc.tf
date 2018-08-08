###
#
# VPC
#
resource "aws_vpc" "eks" {
  cidr_block           = "10.50.0.0/16"
  instance_tenancy     = "default"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"

  tags {
    Name = "eks"
  }
}
