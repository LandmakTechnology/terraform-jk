provider "aws" {
      region = "us-east-1"
}
resource "aws_instance" "app" {
    ami           = "ami-05723c3b9cf4bf4ff"
    instance_type = "t2.micro"
    security_groups = ["jkSG"]
    key_name      =  "key29"
    tags = {
        Name = " tomcat"
        Environment = "dev"
  }
}
