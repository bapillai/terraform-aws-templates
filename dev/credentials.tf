# AWS Configuration Credentials

variable "aws_access_key" {
    default = "XXXXXXXXXXXXXXXXXXXXXXXX"
}

variable "aws_secret_key" {
    default = "XXXXXXXXXXXXXXXXXXXXXXXX"
}

variable "aws_region" {
    default = "us-east-2"
}

variable "aws_profile" {
    default = "default"
    description = "The profile to be selected for a particular resource"
    type = string
}