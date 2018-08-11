###
#
# AutoScaling Group
#
resource "aws_autoscaling_group" "eks-node" {
  desired_capacity     = 2
  launch_configuration = "${aws_launch_configuration.eks-node.id}"
  max_size             = 1
  min_size             = 2
  name                 = "eks-node"

  vpc_zone_identifier = [
    "${aws_subnet.public-1a.id}",
    "${aws_subnet.public-1c.id}",
  ]

  tag {
    key                 = "Name"
    value               = "eks-node"
    propagate_at_launch = true
  }

  tag {
    key                 = "kubernetes.io/cluster/${aws_eks_cluster.cluster.name}"
    value               = "owned"
    propagate_at_launch = true
  }
}
