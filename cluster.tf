###
#
# Cluster
#
resource "aws_eks_cluster" "cluster" {
    name = "eks"
    role_arn = "${aws_iam_role.eks-cluster.arn}"

    vpc_config {
        security_group_ids =["$aws_security_group.eks.id"]
        subnet_ids = [
            "${aws_subnet.public-1a.id}",
            "${aws_subnet.public-1c.id}"
        ]
    }
}