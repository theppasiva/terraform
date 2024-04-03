resource "aws_instance" "web" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.roboshop-all.id] #this means list

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_security_group" "roboshop-all" { #this is terraform name, for terraform reference only
  name        = var.sg-name # this is for aws
  description = var.sg-description
  #vpc_id      = aws_vpc.main.id

  ingress {
   description = "Allow all ports"
   from_port   = var.Inbound-from-port
   to_port     = 0
   protocol    = "tcp"
   cidr_blocks = var.Cidr_blocks
 }

 egress {
   from_port   = 0
   to_port     = 0
   protocol    = "-1"
   cidr_blocks = ["0.0.0.0/0"]
 }
   tags = {
    Name = "roboshop-all-aws"
  }
}
