# Creating 1st EC2 instance in Public Subnet
resource "aws_instance" "demoinstance" {
ami                         = "ami-01a4f99c4ac11b03c"
instance_type               = "t2.micro"
#count                       = 1
key_name                    = "hmm"
vpc_security_group_ids      = ["${aws_security_group.demosg.id}"]
subnet_id                   = aws_subnet.public-subnet-1.id
associate_public_ip_address = true
user_data = "${file("data.sh")}"
tags = {
Name                        = "My Public Instance1"
}
}
# Creating 2nd EC2 instance in Public Subnet
resource "aws_instance" "demoinstance1" {
ami                         = "ami-01a4f99c4ac11b03c"
instance_type               = "t2.micro"
#count                       = 1
key_name                    = "hmm"
vpc_security_group_ids      = ["${aws_security_group.demosg.id}"]
subnet_id                   = aws_subnet.public-subnet-2.id
associate_public_ip_address = true
user_data                   = "${file("data.sh")}"
tags                        = {
Name                        = "My Public Instance 2"
}
}
