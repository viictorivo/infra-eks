resource "aws_eks_cluster" "order-system" {
  name     = var.cluster_name
  role_arn = var.node_role_arn
  vpc_config {
    subnet_ids              = var.aws_public_subnet
    endpoint_public_access  = var.endpoint_public_access
    endpoint_private_access = var.endpoint_private_access
    public_access_cidrs     = var.public_access_cidrs
    security_group_ids      = [aws_security_group.node_group_one.id]
  }

}

data "aws_eks_cluster_auth" "order-system_auth" {
  name = aws_eks_cluster.order-system.name
}

resource "aws_eks_node_group" "order-system" {
  cluster_name    = aws_eks_cluster.order-system.name
  node_role_arn   = var.node_role_arn
  node_group_name = var.node_group_name
  subnet_ids      = var.aws_public_subnet
  instance_types  = var.instance_types

  scaling_config {
    desired_size = var.scaling_desired_size
    max_size     = var.scaling_max_size
    min_size     = var.scaling_min_size
  }

}

resource "aws_security_group" "node_group_one" {
  name_prefix = "node_group_one"
  vpc_id      = var.vpc_id

  ingress {
    from_port = 80
    to_port   = 80
    protocol  = "tcp"

    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

