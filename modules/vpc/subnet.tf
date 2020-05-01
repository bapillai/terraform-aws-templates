# AWS Component Configuration Details

resource "aws_subnet" "test-vpc-subnet1" {
    vpc_id     = "${aws_vpc.test-vpc.id}"
    cidr_block = "10.0.0.0/24"
    availability_zone = "us-east-2a"

    tags = {
        Name = "test-vpc-subnet"
    }
}

resource "aws_subnet" "test-vpc-subnet2" {
    vpc_id     = "${aws_vpc.test-vpc.id}"
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-east-2b"

    tags = {
        Name = "test-vpc-subnet"
    }
}


#Output parameters

output "subnet1-id" {
  value = "${aws_subnet.test-vpc-subnet1.id}"
}

output "subnet2-id" {
  value = "${aws_subnet.test-vpc-subnet2.id}"
}