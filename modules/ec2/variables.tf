//----------------------------------------------------------------------
// Shared Variables
//----------------------------------------------------------------------

variable "vpc-id" {}
variable "subnet-id-1" {}
variable "subnet-id-2" {}
variable "security-group-id" {}
variable "ecs-cluster-name" {}
variable "ecs-instance-role-name" {}
variable "ecs-instance-profile-name" {}
variable "ecs-key-pair-name" {}

//----------------------------------------------------------------------
// Autoscaling Group Variables
//----------------------------------------------------------------------

variable "autoscaling-group-name" {
    description = "The name for the autoscaling group for the cluster."
    default     = "test-ecs-asg"
    type        = string
}

variable "max-instance-size" {
    description = "The max number of instances."
    default     = 5
    type        = number
}

variable "min-instance-size" {
    description = "The min number of instances in the cluster."
    default     = 2
    type        = number
}

variable "desired-capacity" {
    description = "The desired capacity of the instances"
    default     = 3
    type        = number
}

variable "health-check-grace-period" {
    description = "The variable to store the health check grace period of the cluster."
    default     = 300
    type        = number
}

//----------------------------------------------------------------------
// Application Load Balancer Variables
//----------------------------------------------------------------------

variable "load-balancer-name" {
    description = "The name for the load balancer oof the cluster."
    default     = "test-ecs-load-balancer"
    type        = string
}

variable "target-group-name" {
    description = "The name for the target group of the cluster."
    default     = "test-ecs-target-group"
    type        = string
}

//----------------------------------------------------------------------
// Launch Configuration Variables
//----------------------------------------------------------------------

variable "launch-configuration-name" {
    description = "The name for the launch configuration of the cluster."
    default     = "test-ecs-launch-configuration"
    type        = string
}

variable "image-id" {
    description = "The name for the image used in ec2."
    default     = "ami-01e36b7901e884a10"
    type        = string
}

variable "instance-type" {
    description = "The name for the instance type used."
    default     = "t2.medium"
    type        = string
}