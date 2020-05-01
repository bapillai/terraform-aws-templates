# AWS Component Configuration Details

resource "aws_route_table" "test-vpc-route-table" {
    vpc_id = "${aws_vpc.test-vpc.id}"

    route {
      cidr_block = "10.0.0.0/0"
      gateway_id = "${aws_internet_gateway.test-vpc-internet-gateway.id}"
    }

    tags = {
      Name = "test-vpc-route-table"
    }
}

resource "aws_route_table_association" "test-vpc-route-table-association1" {
    subnet_id      = "${aws_subnet.test-vpc-subnet1.id}"
    route_table_id = "${aws_route_table.test-vpc-route-table.id}"
}

resource "aws_route_table_association" "test-vpc-route-table-association2" {
    subnet_id      = "${aws_subnet.test-vpc-subnet2.id}"
    route_table_id = "${aws_route_table.test-vpc-route-table.id}"
}

