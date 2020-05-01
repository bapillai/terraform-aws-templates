# AWS Component Configuration Details

resource "aws_ecs_task_definition" "test-sample-definition" {
    family                = "test-sample-definition"
    container_definitions = "${file("../modules/ecs/task-definition.json")}"
}