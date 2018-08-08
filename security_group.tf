###
#
# Security Group
#
# This security group controls networking access to the Kubernetes masters. 
# We will later configure this with an ingress rule to allow traffic from the worker nodes.
resource "aws_security_group" "eks" {
  name        = "eks"
  description = "Cluster communication with worker nodes"
  vpc_id      = "${aws_vpc.eks.id}"

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "eks"
  }
}