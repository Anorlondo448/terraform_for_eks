###
#
# Internet Gateway
#
resource "aws_internet_gateway" "eks" {
  vpc_id     = "${aws_vpc.eks.id}"
  depends_on = ["aws_vpc.eks"]

  tags {
    Name = "eks"
  }
}
