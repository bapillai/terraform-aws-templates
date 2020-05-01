# AWS Component variable definition

variable "ecs-target-group-arn" {}

variable "ecs-cluster-name" {
    default     = "test-ecs-cluster"
    description = "The name of the ecs cluster"
    type        = string
}

variable "ecs-service-role-arn" {
    default     = "test-ecs-cluster"
    description = "The ecs service role arn details"
    type        = string
}

variable "ecs-service-name" {
    default     = "test-ecs-service"
    description = "The name of the ecs servicee"
    type        = string
}

variable "ecs-load-balancer-name" {
    default     = "test-ecs-load-balancer"
    description = "The name of the ecs load balancer"
    type        = string
}