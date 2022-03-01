resource "aws_instance" "example" {
	ami = "ami-40d28157"
	instance_type = "t2.micro"


	user_date = <<-EOF
		#!/bin/bash
		echo "Hello, World" > index.html
		nohup busybox httpd -f -p 8080 &
		EOF
		
 	tags {
		NAME = "terraform-example"
 	}
}
