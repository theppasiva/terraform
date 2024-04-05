resource "aws_security_group" "roboshop-all" { #this is terraform name, for terraform reference only
  name        = "dynamic-demo" # this is for aws
  description = "dynamic demo"
  #vpc_id      = aws_vpc.main.id

  dynamic "ingress" {
   for_each = var.ingress_rules
   content {
      description = ingress.value["description"]
      from_port   = ingress.value["from_port"] 
      to_port     = ingress.value["to_port"]
      protocol    = ingress.value["protocol"]
      cidr_blocks = ingress.value["cidr_blocks"]

   }
   
 }


 egress {
   from_port   = 0
   to_port     = 0
   protocol    = "-1"
   cidr_blocks = ["0.0.0.0/0"]
 }
   tags = {
    Name = "dynamic-demo"
  }
}