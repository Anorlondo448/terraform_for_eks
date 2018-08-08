###
#
# Subnet(public)
#
# public
resource "aws_subnet" "public-1a" {
  vpc_id            = "${aws_vpc.eks.id}"
  cidr_block        = "10.50.1.0/24"
  availability_zone = "us-east-1a"

  tags {
    Name = "eks-public-1a"
  }
}

resource "aws_subnet" "public-1c" {
  vpc_id            = "${aws_vpc.eks.id}"
  cidr_block        = "10.50.2.0/24"
  availability_zone = "us-east-1c"

  tags {
    Name = "eks-public-1c"
  }
}

# private
resource "aws_subnet" "private-1a" {
  vpc_id            = "${aws_vpc.eks.id}"
  cidr_block        = "10.50.3.0/24"
  availability_zone = "us-east-1a"

  tags {
    Name = "eks-private-1a"
  }
}

resource "aws_subnet" "private-1c" {
  vpc_id            = "${aws_vpc.eks.id}"
  cidr_block        = "10.50.4.0/24"
  availability_zone = "us-east-1c"

  tags {
    Name = "eks-private-1c"
  }
}
