# AWS Component Configuration Details

resource "aws_ecs_cluster" "test-ecs-cluster" {
    name = "${var.ecs-cluster-name}"
}