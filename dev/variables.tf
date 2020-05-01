# AWS Component variable definition

variable "ecs-cluster-name" {
    description = "The name for the cluster."
    default = "test-ecs-cluster"
}

variable "ecs-key-pair-name" {
    description = "The name for the cluster."
    default = "Linux-Remote"
}