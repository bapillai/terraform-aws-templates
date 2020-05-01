# AWS Component Configuration Details

resource "aws_iam_instance_profile" "ecs-instance-profile" {
    name = "ecs-instance-profile"
    path = "/"
    role = "${aws_iam_role.ecs-instance-role.name}"
}


#Output parameters

output "ecs-instance-profile-name" {
    value = "${aws_iam_instance_profile.ecs-instance-profile.name}"
}