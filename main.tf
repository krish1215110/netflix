provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 5
ami = "ami-0c614dee691cbbf37"
instance_type = "t2.medium"
key_name = "new key"
vpc_security_group_ids = ["sg-0aa8edec9bc5466f8"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "tomcat-1", "tomcat-2", "Monitoring server"]
}
