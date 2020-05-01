# AWS Component Configuration Details

resource "aws_internet_gateway" "test-vpc-internet-gateway" {
    vpc_id = "${aws_vpc.test-vpc.id}"

    tags = {
      Name = "test-vpc-internet-gateway"
    }
}