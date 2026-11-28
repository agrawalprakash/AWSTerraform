# terraform code to use Metadata Count to launch multiple servers at once
resource "aws_instance" "web" {
    ami = "ami-123456789"
    instance_type = "t3.micro"
    count = 5
    tags = {
      Name = "Instance ${count.index}"
    }
 }
