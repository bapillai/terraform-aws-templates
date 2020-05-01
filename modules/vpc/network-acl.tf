# AWS Component Configuration Details

resource "aws_network_acl" "test-vpc-network-acl" {
    vpc_id = "${aws_vpc.test-vpc.id}"
    subnet_ids = ["${aws_subnet.test-vpc-subnet1.id}", "${aws_subnet.test-vpc-subnet2.id}"]
    
    egress {
        protocol   = "-1"
        rule_no    = 100
        action     = "allow"
        cidr_block = "0.0.0.0/0"
        from_port  = 0
        to_port    = 0
    }

    ingress {
        protocol   = "-1"
        rule_no    = 100
        action     = "allow"
        cidr_block = "0.0.0.0/0"
        from_port  = 0
        to_port    = 0
    }

    tags = {
        Name = "test-vpc-network-acl"
    }
}